//
//  Destination.swift
//  NavigationCoordinator
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

enum Destination: Hashable, View {
    
    case none
    
    case apple
    case banana
    case carrot
    case damson
    case mango
    case orange
    case pear
    case tomato
    case watermelon
    
    var body: some View {
        switch self {
        case .none:
            EmptyView()
        case .apple:
            AppleView().destination()
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
            OrangeView().destination()
        case .pear:
            PearView().destination()
        case .tomato:
            TomatoView().destination()
        case .watermelon:
            WatermelonView().destination()
        }
    }
}

//// Starter Destination
////
//// DO NOT REMOVE the `none` case
//// Add new cases for new destination views
//// DO NOT use dependency injection; use `EnvironmentObject`s instead to pass data between views
//
//enum Destination: Hashable, View {
//    
//    case none
//    
//    var body: some View {
//        switch self {
//        case .none:
//            EmptyView()
//        }
//    }
//}
//
//
// Example Destination
//
//enum Destination: Hashable, View {
//    
//    case none
//    
//    case apple
//    case banana
//    case carrot
//    case damson
//
//    var body: some View {
//        switch self {
//        case .none:
//            EmptyView()
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
