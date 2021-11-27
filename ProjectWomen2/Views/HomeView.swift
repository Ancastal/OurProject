//
//  HomeView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 27/11/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 8) {
            Spacer()
            HStack{
                
                Text("Project Women")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                
            }
            
            HStack{
                
                Image("loving").resizable()
                    .scaledToFit()
                
            }
            Text("Project Woman is a project carried out by Group 5 of the iOS Foundation Program, tuo support victims of abuse and domestic violence.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 50.0)
                

            
//            Button(action: {
//                print("Delete tapped!")
//            }) {
            Spacer()
            Spacer()
            Spacer()
                Text("Continue")
                    .fontWeight(.semibold)
                    .font(.title)
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(40)
            
//            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
