//
//  ContentView.swift
//  swiftUIilk
//
//  Created by Eren Akkoç on 15.05.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Hello Swift"
    
    var body: some View {
        Text("Hi Swift")
            .font(.largeTitle)
            .bold()
            
            
        
    }
}

#Preview {
    ContentView()
}
