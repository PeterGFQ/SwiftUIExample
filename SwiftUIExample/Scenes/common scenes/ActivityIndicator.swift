//
//  ActivityIndicator.swift
//  SwiftUIExample
//
//  Created by peterguo on 1/8/20.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    @Binding var isAnimating: Bool
    
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct ActivityIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicator(isAnimating: .constant(true), style: .medium)
    }
}
