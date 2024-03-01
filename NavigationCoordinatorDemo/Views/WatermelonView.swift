//
//  WatermelonView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct WatermelonView: View {
    
    @EnvironmentObject private var appController: AppController
    
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                Button("Pop") {
                    navigation.pop()
                }
            }
            .navigationTitle("\(appController.title)View")
            .navigationBarBackButtonShown()
        } onDismiss: { destination in
            print("dismissed: \(destination)")
        }
    }
}

#Preview {
    WatermelonView()
}
