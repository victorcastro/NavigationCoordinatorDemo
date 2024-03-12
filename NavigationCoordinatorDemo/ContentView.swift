//
//  ContentView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var appController = AppController()
    @StateObject private var tabController = TabController()
    
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
                .environmentObject(tabController)
            
            NavigationRoot(.grapes)
                .tabItem {
                    Image(systemName: "3.circle")
                }
        }
        .environmentObject(appController)
    }
}

#Preview {
    ContentView()
}
