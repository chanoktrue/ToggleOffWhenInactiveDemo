//
//  ContentView.swift
//  ToggleDemo
//
//  Created by Thongchai Subsaidee on 05/07/2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        VStack {
            Text(isOn ? "On" : "Off")
            
            Toggle(isOn: $isOn, label: {
                Text("Label")
            })
            .labelsHidden()
            .onChange(of: isOn) { newValue in
                        if newValue {
                            print("Toggle is On")
                        } else {
                            print("Toggle is Off")
                        }
                    }
        }
        .padding()
       
    }
}


#Preview {
    ContentView(isOn: .constant(false))
}
