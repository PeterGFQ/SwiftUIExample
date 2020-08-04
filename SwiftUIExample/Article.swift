//
//  Article.swift
//  SwiftUIExample
//
//  Created by peterguo on 5/8/20.
//

import Foundation

struct Article: Identifiable {
//    struct Article: ObservableObject {
    
//    @EnvironmentObject var article = Article()
//    @ObservableObject var article = Article()

    var id: String
    
    let headline: String
    let subHeadline: String
}
