//
//  DetailView.swift
//  MarvelAPI-Combine
//
//  Created by Muhammed Hanifi Alma on 12.10.2021.
//

import SwiftUI

struct DetailView: View {
    let character: MarvelCharacter
    
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                LoadableImage(url: character.imageURL)
                    .frame(width: 300, height: 300)
                Text(character.name)
                    .font(Font.system(size: 20, weight: .bold, design: .default))
                Text(character.description)
                    .font(Font.system(size: 12))
                    .lineLimit(nil)
                
            
            }
            .padding()
            .navigationBarTitle(character.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Mock Character
        DetailView(character: MarvelCharacter(name: "Kevin",
                                              description: "Legend",
                                              thumbnail: Thumbnail(path: "", thumbnailExtension: .jpg),
                                              urls: []))
    }
}

