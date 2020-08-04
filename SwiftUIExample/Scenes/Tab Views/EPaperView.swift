//
//  EPaperView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct EPaperView: View {
    
    @State private var clickOn: String? = nil

    var body: some View {
        NavigationView {
            Text("EPaper View") .modifier(PrimaryLabelViewModifier(labelForegroundColor: .yellow, labelBackgroundColor: .red))
            .navigationBarTitle(Text("EPaper"), displayMode: .inline)
        }
    }
}

#if DEBUG
struct EPaperView_Previews: PreviewProvider {
    static var previews: some View {
        EPaperView()
    }
}
#endif
