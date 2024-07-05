# ToggleOffWhenOpenDemo

import SwiftUI

@main
struct ToggleDemoApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @State private var isOn = false
    var body: some Scene {
        WindowGroup {
            ContentView(isOn: $isOn)
        }
        .onChange(of: scenePhase) { _, newPhase in
            if newPhase == .inactive {
                isOn = false
            }
        }
    }
}


![image](https://github.com/chanoktrue/ToggleOffWhenOpenDemo/assets/3993516/81f854ec-d5cd-49e8-8ee0-335cd6725d87)
