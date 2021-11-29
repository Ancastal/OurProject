//
//  HomeView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 29/11/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                Spacer(minLength: 35)
                ZStack{
                Image("img")
                    .resizable()
                    .scaledToFit()
                    .mask(RoundedRectangle(cornerRadius: 40).frame(width: 350.0))
                Text("Ciao")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                }
                Spacer(minLength: 30)
                Image("img")
                    .resizable()
                    .scaledToFit()
                    .mask(RoundedRectangle(cornerRadius: 40).frame(width: 350.0))
            }
            .navigationTitle("Project Woman")
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
