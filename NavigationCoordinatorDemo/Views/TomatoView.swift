//
//  TomatoView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct TomatoView: View {
    
    @EnvironmentObject private var appController: AppController
    
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                Button("Push WatermelonView") {
                    appController.title = "Watermelon"
                    navigation.push(.watermelon)
                }
            }
            .navigationTitle("TomatoView")
        }
    }
}

#Preview {
    TomatoView()
}
