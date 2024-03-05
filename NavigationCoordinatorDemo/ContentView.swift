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
            NavigationRoot(.apple)
                .tabItem {
                    Image(systemName: "1.circle")
                }
            
            NavigationRoot(.tomato)
                .tabItem {
                    Image(systemName: "2.circle")
                }
            
            NavigationRoot(.grapes)
                .tabItem {
                    Image(systemName: "3.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
