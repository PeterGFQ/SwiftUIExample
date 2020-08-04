//
//  SubHeadlineViewModifier.swift
//  SwiftUIExample
//
//  Created by peterguo on 5/8/20.
//

import SwiftUI

struct SubHeadlineViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .padding(20)
            .foregroundColor(.secondary)
            .font(.subheadline)
    }
}

struct SubHeadlineViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        
        Text("This is a sub headline for article. \n It shall be long enough\n It shall be long enough\n It shall be long enough\n It shall be long enough").modifier(SubHeadlineViewModifier())
    }
}
