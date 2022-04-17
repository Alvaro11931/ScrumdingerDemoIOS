//
//  ScrumdingerDemoApp.swift
//  ScrumdingerDemo
//
//  Created by alvaro on 5/04/22.
//

import SwiftUI

@main
struct ScrumdingerDemoApp: App {
    @State private var scrums = DailyScrum.sampledata
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $scrums)
            }
        }
    }
}


