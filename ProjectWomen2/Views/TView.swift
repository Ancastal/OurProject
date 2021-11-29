//
//  TView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 29/11/21.
//

import SwiftUI

struct TView: View {
    var body: some View {
        TabView() {
            HomeView().tabItem { Label("Home", systemImage: "house.fill") }
           
            ContentView().tabItem { Label("Share", systemImage: "magnifyingglass.circle.fill") }
            MapView().tabItem { Label("Map", systemImage: "map.fill") }
            ShareView().tabItem { Label("Info", systemImage: "info.circle.fill") }
        }
        
    }
}

struct TView_Previews: PreviewProvider {
    static var previews: some View {
        TView()
    }
}
