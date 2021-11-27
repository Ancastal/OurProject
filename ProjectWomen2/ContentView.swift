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
            Color.pink.ignoresSafeArea()
            ZStack{
                
                VStack(spacing: 0){
                    
                    Rectangle()
                        .foregroundColor(myColor)
                        .frame(height:
                                metrics.size.height * 0.30).overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.white)
                                        .frame(width: metrics.size.width * 0.8,
                                               height: metrics.size.height * 0.3)
                                        .offset(x:0, y:120)
                                    
                                    
                                )
                    Text("What is your experience with \nthis situation?")
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(TextAlignment.center)
                        .font(.system(size: 20))
                        .padding(10.0)
                        .offset(x:0,y:-20)
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(width: metrics.size.width * 0.9,
                                   height: metrics.size.height * 0.1)
                            .offset(x:0, y: metrics.size.height * 0.20)
                        Text("Risposta 1")
                            .offset(x:0, y: metrics.size.height * 0.2)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(width: metrics.size.width * 0.9,
                                   height: metrics.size.height * 0.1)
                            .offset(x:0, y: metrics.size.height * 0.22)
                        Text("Risposta 2")
                            .offset(x:0, y: metrics.size.height * 0.22)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(width: metrics.size.width * 0.9,
                                   height: metrics.size.height * 0.1)
                            .offset(x:0, y: metrics.size.height * 0.24)
                        Text("Risposta 3")
                            .offset(x:0, y: metrics.size.height * 0.24)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(width: metrics.size.width * 0.9,
                                   height: metrics.size.height * 0.1)
                            .offset(x:0, y: metrics.size.height * 0.26)
                        Text("Risposta 4")
                            .offset(x:0, y: metrics.size.height * 0.26)
                    }
                
                
                
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

