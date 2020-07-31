//
//  MenuView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct MenuView: View {
    
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
            .navigationBarTitle(Text("MENU"), displayMode: .inline)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
