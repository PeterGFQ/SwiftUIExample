//
//  DiscoverView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct DiscoverView: View {
    
    @State private var clickOn: String? = nil

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: BookmarkView(), tag: "BookmarkView", selection: $clickOn) {
                    Button("Tap to show Bookmark") {
                        self.clickOn = "BookmarkView"
                    }.font(.largeTitle)
                }
            }
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
