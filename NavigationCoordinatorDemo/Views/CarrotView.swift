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
                    navigation.push(.damson)
                }
                
                Button("Present DamsonView") {
                    navigation.present(.damson)
                }
                
#if !os(macOS)
                Button("Cover DamsonView") {
                    navigation.cover(.damson)
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
