//
//  ToggleDemoApp.swift
//  ToggleDemo
//
//  Created by Thongchai Subsaidee on 05/07/2024.
//

import SwiftUI

@main
struct ToggleDemoApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @State private var isOn: Bool = false
    var body: some Scene {
        WindowGroup {
            ContentView(isOn: $isOn)
                .onChange(of: scenePhase) { oldValue, newValue in
                    if newValue == .inactive {
                        isOn = false
                    }
                }
        }
    }
}
