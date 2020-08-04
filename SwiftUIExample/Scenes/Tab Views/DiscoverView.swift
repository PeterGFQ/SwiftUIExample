//
//  DiscoverView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct DiscoverView: View {
    
    var body: some View {
        NavigationView {
            Text("Discover View")
                .modifier(PrimaryLabelViewModifier())
            .navigationBarTitle(Text("DISCOVER"), displayMode: .inline)
        }
    }
}

#if DEBUG
struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
#endif
