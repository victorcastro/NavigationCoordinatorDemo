//
//  Destination+.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 12.03.2024.
//

import SwiftUI

extension Destination: View {
    
    static let apple = Destination()
    static let banana = Destination()
    static let carrot = Destination()
    static let damson = Destination()
    static let mango = Destination()
    static let orange = Destination()
    static let pear = Destination()
    static let tomato = Destination()
    static let watermelon = Destination()
    static let grapes = Destination()
    static let grape = Destination()
    
    var body: some View {
        switch self {
        case .apple:
            AppleView().destination(navigationBarBackButtonHidden: true)
        case .banana:
            BananaView().destination()
                .presentationBackground(.ultraThinMaterial)
        case .carrot:
            CarrotView().destination()
        case .damson:
            DamsonView().destination()
        case .mango:
            MangoView().destination(navigationBarBackButtonHidden: true)
        case .orange:
            OrangeView().destination(navigationBarBackButtonHidden: true)
        case .pear:
            PearView().destination()
        case .tomato:
            TomatoView().destination(navigationBarBackButtonHidden: true)
        case .watermelon:
            WatermelonView().destination()
        case .grapes:
            GrapesView().destination(navigationBarBackButtonHidden: true)
                .environmentObject(GrapesController())
        case .grape:
            GrapeView().destination()
        default:
            EmptyView()
        }
    }
}
