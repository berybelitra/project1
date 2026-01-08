//
//  LogSessView.swift
//  project1
//
//  Created by Niyonkuru Belitra on 1/3/26.
//

import SwiftUI

struct LogSessView: View {
    
    @EnvironmentObject var store: SessionStore
    @State private var durationText = ""
    @State private var locationText = ""

    
    var body: some View {
        NavigationStack{
            Form{
                Section("Study Details"){
                    TextField("Duration (minutes)", text: $durationText)
                        .keyboardType(.numberPad)

                    TextField("Location (optional)", text: $locationText)
                }
                Button("Save Session"){
                    //converts durationText into an int
                    guard let minutes = Int(durationText), minutes>0 else {return}
                    //stores the durationText and locationText into addSession function
                    store.addSession(location: locationText, duration:minutes)
                    //clears the variables for next user input
                    durationText=""
                    locationText=""
                }
            }
        }
    }
}

