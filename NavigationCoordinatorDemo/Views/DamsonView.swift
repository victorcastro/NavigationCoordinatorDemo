//
//  DamsonView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct DamsonView: View {
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                Button("Push MangoView") {
                    navigation.push(.mango)
                }
                
                Button("Present MangoView") {
                    navigation.push(.mango, type: .sheet)
                }
                
#if !os(macOS)
                Button("Cover MangoView") {
                    navigation.push(.mango, type: .fullScreenCover)
                }
#endif
                
                Button("Pop") {
                    navigation.pop()
                }
            }
            .navigationTitle("DamsonView")
        } onDismiss: { destination in
            print("dismissed: \(destination)")
        }
    }
}

#Preview {
    DamsonView()
}
