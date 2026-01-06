//
//  ContentView.swift
//  project1
//
//  Created by Niyonkuru Belitra on 1/5/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Created tabs to access the  different funtions of the app
        TabView{
            Tab("Home",systemImage: "house"){
                Text("Home")
            }
            Tab("Sessions",systemImage: "magnifyingglass"){
                Text("Sessions")
            }
            Tab("Start",systemImage: "play.circle"){
                Text("Start a session")
            }
        }
    }
}

#Preview {
    ContentView()
}
