//
//  TabView.swift
//  ProjectWomen2
//
//  Created by Tommaso Tranchese on 29/11/21.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        
        TabView() {
            
            
            MapView().tabItem { Label("Home", systemImage: "house.fill") }
            MapView().tabItem { Label("Map", systemImage: "map.fill") }
            MapView().tabItem { Label("Share", systemImage: "square.and.arrow.up.fill") }
            MapView().tabItem { Label("Info", systemImage: "info.circle.fill") }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
