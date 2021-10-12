//
//  ActivityIndicator.swift
//  MarvelAPI-Combine
//
//  Created by Muhammed Hanifi Alma on 12.10.2021.
//

import SwiftUI

/* Provides the loading animation */
struct ActivityIndicator: UIViewRepresentable {
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.startAnimating()
    }
}

