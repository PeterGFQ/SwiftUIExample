//
//  SwiftUIExampleApp.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

@main
struct SwiftUIExampleApp: App {
    
    //Get it from user default, assign to the State instance wrapped value
//    @State private var onBoardingViewsSeen = false

    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}


#if DEBUG
struct SwiftUIExampleApp_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
#endif
