//
//  ContentView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationProvider(root: .apple)
                .tabItem {
                    Image(systemName: "1.circle")
                }
            
            NavigationProvider(root: .tomato)
                .tabItem {
                    Image(systemName: "2.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
