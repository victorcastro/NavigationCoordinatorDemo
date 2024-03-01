//
//  PearView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct PearView: View {
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                Button("Replace with OrangeView") {
                    navigation.replace(with: .orange) {
                        print("Completed replacing with orange.")
                    }
                }
                
                Button("Pop") {
                    navigation.pop()
                }
            }
            .navigationTitle("PearView")
        }
    }
}

#Preview {
    PearView()
}
