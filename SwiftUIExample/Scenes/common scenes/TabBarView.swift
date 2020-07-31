//
//  TabBarView.swift
//  SwiftUIExample
//
//  Created by peterguo on 31/7/20.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selectedTab = 0
    var tabBarItems: [(Image, Text)] =
        [ (Image("tab_home_icon"), Text("Home").foregroundColor(.black)),
          (Image("tab_latest_icon"), Text("LATEST").foregroundColor(.black)),
          (Image("tab_discover_icon"), Text("DISCOVER").foregroundColor(.black)),
          (Image("tab_epaper_icon"), Text("ePaper").foregroundColor(.black)),
          (Image("tab_menu_icon"), Text("Menu").foregroundColor(.black)) ]
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    tabBarItems[0].0
                    tabBarItems[0].1
                }
            LatestView()
                .tabItem {
                    tabBarItems[1].0
                    tabBarItems[1].1
                }
            DiscoverView()
                .tabItem {
                    tabBarItems[2].0
                    tabBarItems[2].1
                }
            EPaperView()
                .tabItem {
                    tabBarItems[3].0
                    tabBarItems[3].1
                }
            MenuView()
                .tabItem {
                    tabBarItems[4].0
                    tabBarItems[4].1
                }
        }
    }
}

#if DEBUG
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
#endif
