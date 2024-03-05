//
//  WatermelonView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct WatermelonView: View {
    
    @EnvironmentObject private var navigation: Navigation
    @EnvironmentObject private var appController: AppController
    
    var body: some View {
        List {
            Button("Pop") {
                navigation.pop()
            }
        }
        .navigationTitle("\(appController.title)View")
        .navigationBarBackButtonShown()
    }
}

#Preview {
    WatermelonView()
}
