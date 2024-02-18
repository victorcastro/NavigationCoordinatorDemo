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
                    navigation.present(.orange)
                }
                
#if !os(macOS)
                Button("Cover OrangeView") {
                    navigation.cover(.orange)
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
