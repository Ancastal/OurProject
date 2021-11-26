//
//  ContentView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 26/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Color.blue.ignoresSafeArea().padding(.bottom, 130.0)
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .frame(width: 300.0, height: 200.0)
                    .foregroundColor(.white)
                    .roundedBorder(Color.white, width: 3)
                    
                    
                
                
                
                
                
                
                TabView() {
                    Text("").tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }.tag(1)
                    Text("").tabItem {
                        Image(systemName: "map.fill")
                        Text("Map")
                    }.tag(2)
                }
                
                
                
            }
            .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
