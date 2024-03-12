//
//  WatermelonView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct WatermelonView: View {
    
    @Environment(\.navigation) var navigation
    @EnvironmentObject private var tabController: TabController
    
    var body: some View {
        List {
            Button("Pop") {
                navigation.pop()
            }
        }
        .navigationTitle("\(tabController.watermelonViewTitle)View")
    }
}

#Preview {
    WatermelonView()
}
