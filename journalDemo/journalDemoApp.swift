//
//  journalDemoApp.swift
//  journalDemo
//
//  Created by dmoney on 5/23/24.
//

import SwiftUI
import SwiftData

@main
struct journalDemoApp: App {
    var body: some Scene {
        WindowGroup {
            JournalRowView()
        }
        .modelContainer(for: Journal.self)
    }

    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }

}
