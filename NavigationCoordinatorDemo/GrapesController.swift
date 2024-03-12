//
//  GrapesController.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 12.03.2024.
//

import SwiftUI

class GrapesController: ObservableObject {
    @Published var grapes = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    @Published var selectedGrape: Int? = nil
}
