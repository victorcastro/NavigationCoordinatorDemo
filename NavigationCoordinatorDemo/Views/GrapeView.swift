//
//  GrapeView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 04.03.2024.
//

import SwiftUI

struct GrapeView: View {
    
    @Environment(\.navigation) var navigation
    @EnvironmentObject private var appController: AppController
    
    var body: some View {
        List {
            Button("Push Banana View") {
                navigation.push(.banana)
            }
        }
        .navigationTitle(appController.selectedGrape != nil ? "Grape \(appController.selectedGrape!)" : "Invalid grape")
    }
}

#Preview {
    GrapeView()
}
