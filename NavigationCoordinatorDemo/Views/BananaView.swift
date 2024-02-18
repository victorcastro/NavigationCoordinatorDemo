//
//  BananaView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

struct BananaView: View {
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                Button("Push CarrotView") {
                    navigation.push(.carrot)
                }
                
                Button("Present CarrotView") {
                    navigation.push(.carrot, type: .sheet)
                }
                
#if !os(macOS)
                Button("Cover CarrotView") {
                    navigation.push(.carrot, type: .fullScreenCover)
                }
#endif
                
                Button("Pop") {
                    navigation.pop()
                }
            }
            .navigationTitle("BananaView")
        }
    }
}

