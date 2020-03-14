//
//  ContentView.swift
//  Neumorphism
//
//  Created by Mac on 14.03.2020.
//  Copyright © 2020 Lammax. All rights reserved.
//

import SwiftUI

extension Color {
    
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    
}

struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .contentShape(Circle())
        .background(
            Group {
                if configuration.isPressed {
                    Circle()
                    .fill(Color.offWhite)
                } else {
                    Circle()
                    .fill(Color.offWhite)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.offWhite
            
            Button(action: {
                print("button tapped")
            }) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.gray)
            }
        .buttonStyle(SimpleButtonStyle())
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
