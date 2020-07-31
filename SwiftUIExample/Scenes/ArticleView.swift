//
//  ArticleView.swift
//  SwiftUIExample
//
//  Created by peterguo on 1/8/20.
//

import SwiftUI

struct ArticleView: View {
    var body: some View {
        Text("Article detail page")
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
