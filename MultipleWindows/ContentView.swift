//
//  ContentView.swift
//  MultipleWindows
//
//  Created by Hung-Chun Tsai on 2023-11-13.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.supportsMultipleWindows)
    private var supportsMultipleWindows

    @Environment(\.openWindow) private var openWindow
    
    var body: some View {
        if supportsMultipleWindows {
            Text("Supports multiple windows")
            Button {
                openWindow.callAsFunction(id: "secondWindow")
            } label: {
                Text("Open second window")
            }

        } else {
            Text("Doesn't support multiple windows")
        }
    }
}

#Preview {
    ContentView()
}
