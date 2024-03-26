//
//  AppleViewModel.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 26.03.2024.
//

import SwiftUI

class AppleViewModel: ObservableObject {
    
    @MainActor
    func pushBananaView(with navigation: Navigation) {
        navigation.push(.banana, onComplete: {
            print("Pushed BananaView from ViewModel.")
        })
    }
}
