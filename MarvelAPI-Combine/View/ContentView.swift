//
//  ContentView.swift
//  MarvelAPI-Combine
//
//  Created by Muhammed Hanifi Alma on 12.10.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            
            List(viewModel.characters, id: \.id) { character in
                NavigationLink(destination: DetailView(character: character)) {
                    HStack {
                        LoadableImage(url: character.imageURL)
                            .frame(width: 50, height: 50)
                        Text(character.name)
                    }
                }
            }.navigationBarTitle("MarvelApi-Combine")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
