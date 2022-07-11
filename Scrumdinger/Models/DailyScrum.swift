//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by neo on 2022/07/11.
//

import Foundation
import SwiftUI

struct DailyScrum {
    
    var title: String
    var attendees: [String]
    var meetingLengthInMinutes: Int
    var theme: Theme
    
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], meetingLengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], meetingLengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], meetingLengthInMinutes: 5, theme: .poppy)
    ]
}
