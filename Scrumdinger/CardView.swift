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
            
            Spacer()
            
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3.fill")
                
                Spacer()
                
                Label("\(scrum.meetingLengthInMinutes)", systemImage: "clock")
                
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColour)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColour)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
