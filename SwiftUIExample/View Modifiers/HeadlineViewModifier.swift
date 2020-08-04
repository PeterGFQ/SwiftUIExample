//
//  HeadlineViewModifier.swift
//  SwiftUIExample
//
//  Created by peterguo on 5/8/20.
//

import SwiftUI

struct HeadlineViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .padding(20)
            .foregroundColor(.black)
            .font(.headline)
    }
}

struct HeadlineModifier_Previews: PreviewProvider {
    static var previews: some View {
        
        Text("This is a headline for article").modifier(HeadlineViewModifier())
    }
}
