//
//  ContentView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 26/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //        NavigationView {
        
        //            ZStack{
        
        GeometryReader { metrics in
            
            VStack(spacing: 0){
                Rectangle()
                    .foregroundColor(.red)
                    .frame(height:
                            metrics.size.height * 0.30)
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: metrics.size.height * 0.90)
            }.edgesIgnoringSafeArea(.all)
            
        }
    }
    //    }
    
}
//    }




//                    TabView() {
//                        Text("").tabItem {
//                            Image(systemName: "house.fill")
//                            Text("Home")
//                        }.tag(1)
//                        Text("").tabItem {
//                            Image(systemName: "map.fill")
//                            Text("Map")
//                        }.tag(2)
//                    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

