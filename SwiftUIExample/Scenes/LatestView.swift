//
//  LatestView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct LatestView: View {
    var body: some View {
        Text("Latest View")
            .font(.largeTitle)
    }
}

#if DEBUG
struct LatestView_Previews: PreviewProvider {
    static var previews: some View {
        LatestView()
    }
}
#endif
