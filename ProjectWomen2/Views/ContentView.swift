//
//  ContentView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 30/11/21.
//

import SwiftUI

extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self.navigationBarTitle("")
                    .navigationBarHidden(true)
                NavigationLink(destination: view
                                .navigationBarTitle("")
                                .navigationBarHidden(true),
                               isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView: View {
    
    @State private var didTap1:Bool = false
    @State private var didTap2:Bool = false
    @State private var didTap3:Bool = false
    @State private var score:Double = 0.0
    @State private var willMoveToNextScreen = false
    @State private var x: Int = 0
    
    var body: some View {
        
        GeometryReader { metrics in
                
            NavigationView {
                VStack(spacing: 0) {
                    ZStack {
//                    RoundedRectangle(cornerRadius: 40)
//                        .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
//                        .foregroundColor(.white)
//                        .frame(width: metrics.size.width * 0.8, height: metrics.size.height * 0.3)
//                        .offset(y: -180)
                        
                        
                        Text(quiz[x])
                            .multilineTextAlignment(.center)
                            .padding(.all, 40.0)
                            .frame(width: 300.0)
                            .overlay(RoundedRectangle(cornerRadius: 40)
                                        .strokeBorder(.black, lineWidth: 0.5))
                                        
                                        
                    }
                    Button(action: {
                        
                        if (x < 19) == false {
                            willMoveToNextScreen = true
                        } else {
                            x += 1
                            score += 1
                        }
                        
                    }) {
                        Text("Si")
                    }
                    Button(action: {
                        if (x < 19) == false {
                            willMoveToNextScreen = true
                        } else {
                            x += 1
                            
                        }
                        
                    }) {
                        Text("No")
                    }
                    Button(action: {
                        
                        if (x < 19) == false {
                            willMoveToNextScreen = true
                        } else {
                            x += 1
                            score += 0.5
                        }
                        
                    }) {
                        Text("Forse")
                    }
                    
                    Text("Count: \(x)" + "-20\nScore: \(score)")
                }
            }
            .navigate(to: MapView(), when: $willMoveToNextScreen)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
