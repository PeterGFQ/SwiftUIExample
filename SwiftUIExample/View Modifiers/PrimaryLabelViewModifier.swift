//
//  PrimaryLabelViewModifier.swift
//  SwiftUIExample
//
//  Created by peterguo on 5/8/20.
//

import SwiftUI

struct PrimaryLabelViewModifier: ViewModifier {
    
    var labelForegroundColor: Color = Color.white
    var labelBackgroundColor: Color = Color.black

    func body(content: Content) -> some View {
        
        content
            .padding(20)
            .background(labelBackgroundColor)
            .foregroundColor(labelForegroundColor)
            .font(.largeTitle)
            .cornerRadius(UIScreen.main.bounds.size.width / 2)
    }
}

struct Label_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Text("Hello, SPH!")
            .modifier(PrimaryLabelViewModifier())
//            .modifier(PrimaryLabelViewModifier(labelForegroundColor: .yellow, labelBackgroundColor: .red))
    }
}
