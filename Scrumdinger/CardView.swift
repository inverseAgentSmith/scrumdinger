//
//  CardView.swift
//  Scrumdinger
//
//  Created by neo on 2022/07/11.
//

import SwiftUI

struct CardView: View {
    
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibility(addTraits: .isHeader)
            
            Spacer()
            
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3.fill")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                
                Spacer()
                
                Label("\(scrum.meetingLengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.meetingLengthInMinutes) minute meeting")
                
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColour)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[1]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColour)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
