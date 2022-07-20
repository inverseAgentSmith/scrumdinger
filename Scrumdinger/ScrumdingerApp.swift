//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by neo on 2022/07/09.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            } // set app's root view to ScrumsView using sample data from DailyScrum sruct
        }
    }
}
