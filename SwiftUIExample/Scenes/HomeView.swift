//
//  HomeView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct HomeView: View {
    
    @State private var clickOn: String? = nil
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: ArticleView(), tag: "Article", selection: $clickOn) {
                    Button("Tap to show Article") {
                        self.clickOn = "Article"
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
                                    Image("st_navbar_header")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 300, height: 20, alignment: .center)
                                    .padding(UIScreen.main.bounds.size.width / 2)
                                ,trailing: Image("search_icon"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
