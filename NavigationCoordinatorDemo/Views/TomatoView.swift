//
//  TomatoView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct TomatoView: View {
    
    @EnvironmentObject private var navigation: Navigation
    @EnvironmentObject private var appController: AppController
    
    var body: some View {
        List {
            Button("Push WatermelonView") {
                appController.title = "Watermelon"
                navigation.push(.watermelon)
            }
        }
        .navigationTitle("TomatoView")
    }
}

#Preview {
    TomatoView()
}
