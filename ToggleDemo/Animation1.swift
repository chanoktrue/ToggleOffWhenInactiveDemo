//
//  Animation1.swift
//  ToggleDemo
//
//  Created by Thongchai Subsaidee on 05/07/2024.
//

import Foundation

import SwiftUI

struct ContentView1: View {
    var body: some View {
        SiriAnimationView()
    }
}

struct SiriAnimationView: View {
    @State private var isAnimating = false

    var body: some View {
        ZStack {
            Circle()
                .stroke(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 8)
                .frame(width: 100, height: 100)
                .scaleEffect(isAnimating ? 1 : 0.8)
                .opacity(isAnimating ? 0 : 1)
                .rotationEffect(.degrees(isAnimating ? 360 : 0))
                .shadow(color: Color.red.opacity(0.5), radius: 10, x: 0, y: 0)
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
            
            Circle()
                .stroke(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 8)
                .frame(width: 100, height: 100)
                .scaleEffect(isAnimating ? 0.8 : 1)
                .opacity(isAnimating ? 1 : 0)
                .rotationEffect(.degrees(isAnimating ? -360 : 0))
                .shadow(color: Color.purple.opacity(0.5), radius: 10, x: 0, y: 0)
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
        }
        .onAppear {
            isAnimating = true
        }
    }
}


#Preview(body: {
    ContentView1()
})
