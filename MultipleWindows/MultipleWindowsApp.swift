//
//  MultipleWindowsApp.swift
//  MultipleWindows
//
//  Created by Hung-Chun Tsai on 2023-11-13.
//

import SwiftUI

@main
struct MultipleWindowsApp: App {
    @AppStorage("showMenuBarExtra") private var showMenuBarExtra = true

    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        #if os(macOS)
        MenuBarExtra(
            "App Menu Bar Extra", systemImage: "star",
            isInserted: $showMenuBarExtra)
        {
            Text("Menu Bar")
        }

        Window("Second View", id: "secondWindow") {
            Text("Second View")
        }
        #endif
    }
}
