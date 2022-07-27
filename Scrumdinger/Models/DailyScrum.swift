//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by neo on 2022/07/11.
//

import Foundation
import SwiftUI

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee] // initialize meeting attendees as an array
    var meetingLengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], meetingLengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0)} // map(_:) creates a new collection by iterating over and applying a transformation to each element in an existing collection.
        self.meetingLengthInMinutes = meetingLengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Engineering", attendees: ["Cassie", "Donald", "Simon"], meetingLengthInMinutes: 10, theme: .teal),
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], meetingLengthInMinutes: 10, theme: .seafoam),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], meetingLengthInMinutes: 5, theme: .periwinkle),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], meetingLengthInMinutes: 5, theme: .lavender)
    ]
}
