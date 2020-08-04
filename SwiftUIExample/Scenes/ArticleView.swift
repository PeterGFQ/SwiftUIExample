//
//  ArticleView.swift
//  SwiftUIExample
//
//  Created by peterguo on 1/8/20.
//

import SwiftUI

struct ArticleView: View {
    
    @State var articleTitle: String = ""
    
    var body: some View {
        Text(articleTitle)
            .font(.largeTitle)
    }
}

#if DEBUG
struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
#endif
