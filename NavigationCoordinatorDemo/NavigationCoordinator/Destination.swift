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
            AppleView()
        case .banana:
            BananaView()
                .asNavigationView()
                .presentationDetents([.medium])
        case .carrot:
            CarrotView()
        case .damson:
            DamsonView()
        case .mango:
            MangoView()
        case .orange:
            OrangeView()
        case .pear:
            PearView()
        case .tomato:
            TomatoView()
        case .watermelon:
            WatermelonView()
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
//            AppleView()
//        case .banana:
//            BananaView()
//        case .carrot:
//            CarrotView()
//        case .damson:
//            DamsonView()
//        }
//    }
//}
