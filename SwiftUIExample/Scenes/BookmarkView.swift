//
//  BookmarkView.swift
//  SwiftUIExample
//
//  Created by peterguo on 1/8/20.
//

import SwiftUI

struct BookmarkView: View {
    var body: some View {
        Text("Bookmark page")
            .font(.largeTitle)
    }
}


#if DEBUG
struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}
#endif
