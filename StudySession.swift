//
//  StudySession.swift
//  project1
//
//  Created by Niyonkuru Belitra on 1/3/26.
//

import Foundation

// Represents one study session
struct StudySession: Identifiable {
    let id = UUID()          // unique identifier for SwiftUI lists
    let date: Date           // when the session occurred
    let duration: Int        // duration in minutes
    let location: String?    // optional study location
}
