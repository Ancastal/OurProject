//
//  ContentView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 26/11/21.
//
//  Idea: riempire i dati di domanda e risposte
//  con un array e chiamare una nuova ContentView
//  con il nuovo valore dell'array della domanda successiva
//


import SwiftUI

struct ContentView: View {
    @State private var didTap1:Bool = false
    @State private var didTap2:Bool = false
    @State private var didTap3:Bool = false
    //    @State private var didTap4:Bool = false
    private var x: Int = 0
    var body: some View {
        NavigationView {
            
            //            ZStack{
                
                        GeometryReader { metrics in
                
                ZStack{
                    
                    VStack(spacing: 30){
                        
                        Rectangle()
                            .foregroundColor(myColor)
                        
                            .frame(height:
                                    metrics.size.height * 0.30).overlay(
                                        RoundedRectangle(cornerRadius: 20).overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                                            .foregroundColor(.white)
                                            .frame(width: metrics.size.width * 0.8,
                                                   height: metrics.size.height * 0.3)
                                            .offset(x:0, y:120)
                                        
                                    )
                        
                        Text(quiz[0])
                            .fontWeight(.light)
                            .multilineTextAlignment(TextAlignment.center)
                            .font(.system(size: 20))
                            .padding(10.0)
                            .offset(x:0,y:-20)
                        
                        
                        VStack(spacing: 30){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                                    .foregroundColor(didTap1 ? myColor : .white)
                                    .frame(width: metrics.size.width * 0.9,
                                           height: metrics.size.height * 0.1)
                                    .offset(x:0, y: metrics.size.height * 0.22)
                                    .onTapGesture {
                                        self.didTap1 = true
                                        
                                    }
                                Text("Frequentemente")
                                    .font(.title2)
                                    .fontWeight(.light)
                                    .offset(x:0, y: metrics.size.height * 0.22)
                                    
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                                    .foregroundColor(didTap2 ? myColor : .white)
                                    .frame(width: metrics.size.width * 0.9,
                                           height: metrics.size.height * 0.1)
                                    .offset(x:0, y: metrics.size.height * 0.22)
                                    .onTapGesture {
                                        self.didTap2 = true
                                        
                                    }
                                Text("A volte")
                                    .font(.title2)
                                    .fontWeight(.light)
                                    .offset(x:0, y: metrics.size.height * 0.22)
                                    
                            }
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                                    .foregroundColor(didTap3 ? myColor : .white)
                                    .frame(width: metrics.size.width * 0.9,
                                           height: metrics.size.height * 0.1)
                                    .offset(x:0, y: metrics.size.height * 0.24)
                                    .onTapGesture {
                                        self.didTap3 = true
                                        
                                    }
                                Text("No")
                                    .font(.title2)
                                    .fontWeight(.light)
                                    .offset(x:0, y: metrics.size.height * 0.24)
                            }
                            //                            ZStack{
                            //                                RoundedRectangle(cornerRadius: 20)
                            //                                    .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                            //                                    .foregroundColor(didTap4 ? myColor : .white)
                            //                                    .frame(width: metrics.size.width * 0.9,
                            //                                           height: metrics.size.height * 0.1)
                            //                                    .offset(x:0, y: metrics.size.height * 0.26)
                            //                                Text("Risposta 4")
                            //                                    .font(.title2)
                            //                                    .fontWeight(.light)
                            //                                    .offset(x:0, y: metrics.size.height * 0.26)
                            //                                    .onTapGesture {
                            //                                        self.didTap4 = true
                            //
                            //                                    }
                            //                            }
                            
                        }
                        
                    }.edgesIgnoringSafeArea(.all)
                }
            }
            
        }
        }

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
        Group {
            ContentView()
        }
    }
}

