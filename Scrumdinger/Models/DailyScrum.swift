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
    var attendees: [String]
    var meetingLengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], meetingLengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.meetingLengthInMinutes = meetingLengthInMinutes
        self.theme = theme
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
