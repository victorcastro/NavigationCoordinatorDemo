//
//  GrapesView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 04.03.2024.
//

import SwiftUI

struct GrapesView: View {
    
    @Environment(\.navigation) var navigation
    @EnvironmentObject private var grapesController: GrapesController
    
    var body: some View {
        List {
            ForEach(grapesController.grapes, id: \.self) { grape in
                Button {
                    grapesController.selectedGrape = grape
                    navigation.push(.grape)
                } label: {
                    Text("Grape: \(grape)")
                }
            }
        }
        .navigationTitle("Grapes")
    }
}

#Preview {
    GrapesView()
}
