//
//  ArticleListView.swift
//  SwiftUIExample
//
//  Created by peterguo on 5/8/20.
//

import SwiftUI

struct ArticleListView: View {
    
    var articleList =  [
        Article(id: "id1", headline: "Article 1", subHeadline: "subHeadline 1"),
        Article(id: "id2", headline: "Article 2", subHeadline: "subHeadline 222222222")]
    
    var body: some View {
        
        List(articleList) { article in
            VStack(alignment: .leading) {
                Text(article.headline).bold().modifier(HeadlineViewModifier())
                Text(article.subHeadline)
                    .modifier(SubHeadlineViewModifier())
            }
        }
    }
}

struct ArticleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView()
    }
}
