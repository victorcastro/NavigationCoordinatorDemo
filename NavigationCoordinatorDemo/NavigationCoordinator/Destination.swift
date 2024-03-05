//
//  Destination.swift
//  NavigationCoordinator
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

enum Destination: Hashable, View {
    
    case apple
    case banana
    case carrot
    case damson
    case mango
    case orange
    case pear
    case tomato
    case watermelon
    case grapes
    case grape
    
    var body: some View {
        switch self {
        case .apple:
            AppleView().destination(isNavigationBarBackButtonShown: false)
        case .banana:
            BananaView().destination()
                .presentationBackground(.ultraThinMaterial)
        case .carrot:
            CarrotView().destination()
        case .damson:
            DamsonView().destination()
        case .mango:
            MangoView().destination()
        case .orange:
            OrangeView().destination(isNavigationBarBackButtonShown: false)
        case .pear:
            PearView().destination()
        case .tomato:
            TomatoView().destination(isNavigationBarBackButtonShown: false)
        case .watermelon:
            WatermelonView().destination()
        case .grapes:
            GrapesView().destination(isNavigationBarBackButtonShown: false)
        case .grape:
            GrapeView().destination()
        }
    }
}

//// Starter Destination
////
//// Add new cases for new destination views
//// DO NOT use dependency injection; use `EnvironmentObject`s instead to pass data between views
//
// Example Destination
//
//enum Destination: Hashable, View {
//
//    case apple
//    case banana
//    case carrot
//    case damson
//
//    var body: some View {
//        switch self {
//        case .apple:
//            AppleView().destination() // add the `.destination()` after every view
//        case .banana:
//            BananaView().destination()
//                .presentationBackground(.ultraThinMaterial) // add any `presentation` for sheets after the `.destination()`
//        case .carrot:
//            CarrotView().destination()
//        case .damson:
//            DamsonView().destination()
//        }
//    }
//}
