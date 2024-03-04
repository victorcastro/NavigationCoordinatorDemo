//
//  AppController.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

class AppController: ObservableObject {
    @Published var title = ""
    
    @Published var grapes = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    @Published var selectedGrape: Int? = nil
}
