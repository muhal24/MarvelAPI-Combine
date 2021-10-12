//
//  LoadableImage.swift
//  MarvelAPI-Combine
//
//  Created by Muhammed Hanifi Alma on 12.10.2021.
//


import SwiftUI

struct LoadableImage: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: URL) {
        imageLoader = ImageLoader(url: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            return AnyView(
                image.resizable()
            )
        } else {
            return AnyView(
                ActivityIndicator(style: .medium)
            )
        }
    }
}

