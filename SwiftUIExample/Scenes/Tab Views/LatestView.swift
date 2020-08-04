//
//  LatestView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct LatestView: View {
    
    @State private var clickOn: String? = nil

    var body: some View {
        NavigationView {
            ArticleListView()
            .navigationBarTitle(Text("LATEST"), displayMode: .inline)
            .navigationBarItems(
                    trailing:
                        Button(action: addArticle, label: { Text("Add Article") })
                  )
        }
    }
    
    func addArticle() {
        print("fs")
    }
}

#if DEBUG
struct LatestView_Previews: PreviewProvider {
    static var previews: some View {
        LatestView()
    }
}
#endif
