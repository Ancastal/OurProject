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
            MapView().tabItem { Label("Home", systemImage: "house.fill") }
            MapView().tabItem { Label("Map", systemImage: "map.fill") }
            MapView().tabItem { Label("Share", systemImage: "square.and.arrow.up.fill") }
            MapView().tabItem { Label("Info", systemImage: "info.circle.fill") }
        }
        
    }
}

struct TView_Previews: PreviewProvider {
    static var previews: some View {
        TView()
    }
}
