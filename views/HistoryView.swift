//
//  HistoryView.swift
//  project1
//
//  Created by Niyonkuru Belitra on 1/3/26.
//

import SwiftUI

struct HistoryView: View {
    //allows for Session store data to be in HistoryView
    @EnvironmentObject var store: SessionStore
    var body: some View {
        //navigation frame for display
        NavigationStack{
            List{
                //pulls the data from store.sessions
                ForEach(store.sessions) { session in
                    //plugs info from session.date, session.duratoin, session.location for the title and data
                    VStack(alignment: .leading, spacing: 6) {
                        Text(session.location ?? "No Location").font(.headline)
                        Text("\(session.duration) min") .font(.subheadline)
                        Text(session.date.formatted(date: .abbreviated, time: .shortened))
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                    }
                    .padding(.vertical, 4)
                }
                
                .onDelete { offsets in
                    store.deleteSessions(at: offsets)
                }
            }
        }
    }
}
