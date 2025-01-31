//
//  BananaView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

struct BananaView: View {
    
    @Environment(\.navigation) var navigation
    
    @State private var viewModel = BananaViewModel()
    
    var body: some View {
        ScrollView {
            Button("Push CarrotView") {
                navigation.push(.carrot) {
                    print("Pushed CarrotView.")
                } onDismiss: {
                    print("Dismissed CarrotView.")
                }
            }
            
            Button("Push async CarrotView from View Model") {
                Task {
                    await viewModel.pushCarrotView(with: navigation)
                }
            }
            
            Button("Present CarrotView") {
                navigation.push(.carrot, type: .sheet, onDismiss: {
                    print("Dismissed CarrotView.")
                })
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

