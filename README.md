#Study Hours App
#A SwiftUI iOS app that allows users to log, track, and analyze their study sessions using a clean tab-based interface and a shared data store.
##This project was geared as a learning based app to understand data flow and how the backend aspect of software comes full circle with the front end and understand SwiftUI state management, environment objects, and app architecture.

##Features

#Log Study Sessions
- Log a study session with:
- Duration (in minutes)
- Optional location
- Automatic timestamp
- Input is checked and cleaned before saving

#History View
- Displays all the logged study sessions
- Abliity to swipe to delete unwanted sessions (updates all data)
- Shows Duration, Date, and Time (Hours and Minutes)

#Stats View
- Total Week Time
- Total Day Time
- Total Number of Sessions
- Auto updates when sessions are deleted or added

##Models

#"StudySession"
-This model is the stucture of one study session
struct StudySession: Identifiable {
    let id = UUID()
    let date: Date
    let duration: Int
    let location: String?
}

#SessionStore
This is the heart of the app and with all the functions for all the variables

- Used @StateObject and @EnviormentalObject to keep all data in sync


##Current limitations
- No authentication
- Resets when app is closed
- Profile tabs empty






