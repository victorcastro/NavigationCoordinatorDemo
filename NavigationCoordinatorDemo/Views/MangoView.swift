//
//  MangoView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct MangoView: View {
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                Button("Push OrangeView") {
                    navigation.push(.orange)
                }
                
                Button("Present OrangeView") {
                    navigation.push(.orange, type: .sheet)
                }
                
#if !os(macOS)
                Button("Cover OrangeView") {
                    navigation.push(.orange, type: .fullScreenCover)
                }
#endif
                
                Button("Pop") {
                    navigation.pop()
                }
            }
            .navigationTitle("MangoView")
        }
    }
}

#Preview {
    MangoView()
}
