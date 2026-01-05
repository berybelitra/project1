//
//  SessionStore.swift
//  project1
//
//  Created by Niyonkuru Belitra on 1/3/26.
//

import Foundation

// Creating reference type to store data that auto refreshes
final class SessionStore: ObservableObject {
    // When the variable sessions changes, it updates all views using it
    @Published var sessions: [StudySession] = []
    // Adding a study session
    func addSession(location: String?, duration: Int) {
        // This allows input to clean spaces
        // ex: " Library " -> "Library"
        let cleanedLocation = location?
            .trimmingCharacters(in: .whitespacesAndNewlines)
        // This makes empty inputs turn into nil
        let locationValue =
            (cleanedLocation?.isEmpty == true) ? nil : cleanedLocation
        // Creates new study session object
        let newSession = StudySession(
            date: Date(),
            duration: duration,
            location: locationValue
        )
        // Inserts newest session at the top
        sessions.insert(newSession, at: 0)
    }
    // Calculates total study duration for today and returns an Int
    func totalMinutesToday() -> Int {
        let calendar = Calendar.current

        return sessions
            .filter { calendar.isDateInToday($0.date) }
            .map { $0.duration }
            .reduce(0, +)
    }
}
