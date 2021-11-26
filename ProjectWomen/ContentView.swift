//
//  ContentView.swift
//  ProjectWomen
//
//  Created by Antonio Castaldo on 26/11/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
 
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
