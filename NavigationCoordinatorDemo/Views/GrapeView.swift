//
//  GrapeView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 04.03.2024.
//

import SwiftUI

struct GrapeView: View {
    
    @EnvironmentObject private var navigation: Navigation
    @EnvironmentObject private var appController: AppController
    
    var body: some View {
        List {
            Button("Present Banana View") {
                navigation.push(.banana, type: .sheet)
            }
        }
        .navigationBarBackButtonShown()
        .navigationTitle(appController.selectedGrape != nil ? "Grape \(appController.selectedGrape!)" : "Invalid grape")
    }
}

#Preview {
    GrapeView()
}
