//
//  NavigationCoordinatorDemoApp.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 18.02.2024.
//

import SwiftUI

@main
struct NavigationCoordinatorDemoApp: App {
    
    @StateObject private var appController = AppController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appController)
        }
    }
}
