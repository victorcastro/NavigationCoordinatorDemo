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
                    navigation.present(.mango)
                }
                
#if !os(macOS)
                Button("Cover MangoView") {
                    navigation.cover(.mango)
                }
#endif
                
                Button("Pop") {
                    navigation.pop()
                }
            }
            .navigationTitle("DamsonView")
        }
    }
}

#Preview {
    DamsonView()
}
