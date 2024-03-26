//
//  BananaViewModel.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 26.03.2024.
//

import SwiftUI

@Observable
class BananaViewModel {
    
    @MainActor
    func pushCarrotView(with navigation: Navigation) async {
        await navigation.push(.carrot)
        print("Pushed CarrotView from ViewModel.")
    }
}
