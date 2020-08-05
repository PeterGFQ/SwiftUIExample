//
//  HomeView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct HomeView: View {
    
    @State var article: String = ""
    @State private var presentArticleView = false

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                
                Button(action: {
                    self.presentArticleView.toggle()
                    self.article = "tapped from home tab"
                }){
                    Text("Tap to show Article")
                }.sheet(isPresented: $presentArticleView){
                    ArticleView(articleTitle: self.article)
                }
//                .fullScreenCover(isPresented: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/) {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
//                }
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


#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
