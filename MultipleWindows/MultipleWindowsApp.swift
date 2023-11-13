//
//  MultipleWindowsApp.swift
//  MultipleWindows
//
//  Created by Hung-Chun Tsai on 2023-11-13.
//

import SwiftUI

@main
struct MultipleWindowsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        #if os(macOS)
        Window("Second View", id: "secondView") {
            Text("Second View")
        }
        #endif
    }
}
