//
//  CarrotView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

struct CarrotView: View {
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                Button("Push DamsonView") {
                    navigation.push(.damson, onComplete: {
                        print("Pushed DamsonView.")
                    })
                }
                
                Button("Present DamsonView") {
                    navigation.push(.damson, type: .sheet)
                }
                
#if !os(macOS)
                Button("Cover DamsonView") {
                    navigation.push(.damson, type: .fullScreenCover)
                }
#endif
                
                Button("Pop") {
                    navigation.pop()
                }
            }
            .navigationTitle("CarrotView")
        }
    }
}


#Preview {
    CarrotView()
}
