//
//  DetailView.swift
//  Scrumdinger
//
//  Created by neo on 2022/07/21.
//

import SwiftUI

struct DetailView: View {
    
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.meetingLengthInMinutes) minutes")
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
