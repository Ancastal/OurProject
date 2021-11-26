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
            Color.orange.ignoresSafeArea()
            ZStack{
                
                VStack(spacing: 0){
                    
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height:
                                metrics.size.height * 0.30).overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                        .frame(width: metrics.size.width * 0.80,
                                               height: metrics.size.height * 0.20)
                                        .offset(x:0, y:120)
                                        


                                )
                    
                    
                    
                    
                }.edgesIgnoringSafeArea(.all)
            }
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

