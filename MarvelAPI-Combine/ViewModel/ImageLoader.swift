//
//  ImageLoader.swift
//  MarvelAPI-Combine
//
//  Created by Muhammed Hanifi Alma on 12.10.2021.
//

import Combine
import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image?
    
    var cancellable: AnyCancellable?
    
    init(url: URL) {
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .compactMap { UIImage(data: $0) }
            .map { Image(uiImage: $0) }
            .receive(on: RunLoop.main)
            .replaceError(with: nil)
            .eraseToAnyPublisher()
            .assign(to: \.image, on: self)
    }
}

