//
//  SplashView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct SplashView: View {
    
    @State private var fetchingAPIOrRemoteConfig = false
    @State private var fetchDataSuccess = false

    var backgroundImage: some View {
        //Fixme, background image size is not fit
        Image("splashscreen")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
    
    var body: some View {
        
        VStack(alignment: .center) {
            Image("st_navbar_header")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(EdgeInsets.init(top: 50, leading: 20, bottom: 50, trailing: 20))
            if fetchingAPIOrRemoteConfig {
                ActivityIndicator(isAnimating: .constant(true), style: .medium)
            }
        }
        .background(backgroundImage)
        .onAppear(perform: {
            fetchingAPIOrRemoteConfig.toggle()
            //Pretending fetching remote config
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                fetchDataSuccess.toggle()
            }
        }).fullScreenCover(isPresented: $fetchDataSuccess, content: {
            TabBarView()
        }).onDisappear(perform: {
            //                    onBoardingViewsSeen = true
        })
//        .popover(isPresented: $fetchDataSuccess, content: {
//            TabBarView()
//        })
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
