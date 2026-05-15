//
//  ContentView.swift
//  Boom Blocks
//
//  Created by Eren Akkoç on 15.05.2026.
//

import SwiftUI

struct BouncyButtonStyle: ButtonStyle {
    var scale: CGFloat = 0.8

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scale : 1)
            .animation(.bouncy, value: configuration.isPressed)
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.launch)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    
                VStack {
                    NavigationLink {
                        GameView()
                    } label: {
                        Text("Play Game")
                            .font(.title)
                            .bold()
                            .padding(.horizontal, 24)
                            .padding(.vertical, 12)
                            .frame(minWidth: 160)
                            .background(.thinMaterial)
                            .clipShape(Capsule())
                            .overlay(
                                Capsule().strokeBorder(Color.white.opacity(0.3), lineWidth: 1)
                            )
                            .foregroundColor(.white)
                    }
                    .buttonStyle(BouncyButtonStyle())
                    
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
