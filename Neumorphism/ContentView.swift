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


struct ContentView: View {
    var body: some View {
        ZStack {
            Color.offWhite
            
            RoundedRectangle(cornerRadius: 25)
            .fill(Color.offWhite)
            .frame(width: 300, height: 300)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
