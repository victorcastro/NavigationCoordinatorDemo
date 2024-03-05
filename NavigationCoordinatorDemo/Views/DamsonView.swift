//
//  DamsonView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct DamsonView: View {
    
    @EnvironmentObject private var navigation: Navigation
    
    var body: some View {
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
    }
}

#Preview {
    DamsonView()
}
