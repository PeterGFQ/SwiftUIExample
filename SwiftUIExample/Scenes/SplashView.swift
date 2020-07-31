//
//  SplashView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct SplashView: View {
    
    var backgroundImage: some View {
        //Fixme, background image size is not fit
        Image("splashscreen")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
    
    var body: some View {
        
        ZStack {
            Image("st_navbar_header")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(EdgeInsets.init(top: 50, leading: 20, bottom: 50, trailing: 20))
                //            .frame(width: ., height: 50, alignment: .center)
//                .background(backgroundImage)
            backgroundImage
        }
    }
}


#if DEBUG
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SplashView()
            SplashView()
                .previewLayout(.device)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
#endif
