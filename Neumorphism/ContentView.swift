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
