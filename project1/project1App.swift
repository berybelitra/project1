//
//  project1App.swift
//  project1
//
//  Created by Niyonkuru Belitra on 1/1/26.
//

import SwiftUI

@main
struct project1App: App {
    @StateObject private var store = SessionStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                //enviormentObject needed for the actual app
                .environmentObject(store)
        }
    }
}
