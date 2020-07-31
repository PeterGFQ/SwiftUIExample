//
//  SwiftUIExampleApp.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

@main
struct SwiftUIExampleApp: App {
    
    @State private var fetchSuccess = false
    //Get it from user default, assign to the State instance wrapped value
//    @State private var onBoardingViewsSeen = false

    var body: some Scene {
        
        WindowGroup {
            SplashView()
                .onAppear(perform: {
                    //Pretending fetching remote config
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        fetchSuccess.toggle()
                    }
                })
                .fullScreenCover(isPresented: $fetchSuccess, content: {
                    TabBarView()
                }).onDisappear(perform: {
//                    onBoardingViewsSeen = true
                })
//                .popover(isPresented: $fetchSuccess, content: {
//                    TabBarView()
//                })
        }
    }
}

struct SwiftUIExampleApp_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
