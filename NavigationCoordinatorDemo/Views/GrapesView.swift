//
//  GrapesView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 04.03.2024.
//

import SwiftUI

struct GrapesView: View {
    
    @EnvironmentObject private var appController: AppController
    
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                ForEach(appController.grapes, id: \.self) { grape in
                    Button {
                        appController.selectedGrape = grape
                        navigation.push(.grape)
                    } label: {
                        Text("Grape: \(grape)")
                    }
                }
            }
        }
        .navigationTitle("Grapes")
    }
}

#Preview {
    GrapesView()
}
