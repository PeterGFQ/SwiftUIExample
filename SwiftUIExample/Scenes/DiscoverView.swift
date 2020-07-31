//
//  DiscoverView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct DiscoverView: View {
    
    var body: some View {
        Text("DISCOVER View")
            .font(.largeTitle)
    }
}

#if DEBUG
struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
#endif
