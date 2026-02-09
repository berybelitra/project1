//
//  ContentView.swift
//  project1
//
//  Created by Niyonkuru Belitra on 1/5/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // LogSession, History, Stats, Profile are already created views so we will use those files as our tabs
        TabView{
            Tab("Log",systemImage: "plus.circle"){
                LogSessView()
            }
            Tab("History",systemImage: "list.bullet"){
                HistoryView()
            }
            Tab("Stats",systemImage: "chart.bar"){
                StatsView()
            }
            Tab("Profile", systemImage: "person"){
                ProfileView()
            }
        }
    }
    
}
#Preview {
    ContentView()
}

