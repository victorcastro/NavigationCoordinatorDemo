//
//  NavigationStep.swift
//  NavigationCoordinator
//
//  Created by Alex Nagy on 13.02.2024.
//

import Foundation

struct NavigationStep {
    var destination: Destination
    var type: NavigationType
    var options: PresentationOptions?
    
    /// Pushes a view onto the coordinator navigation stack
    /// - Parameter destination: the destination of the step
    init(push destination: Destination) {
        self.destination = destination
        self.type = .link
        self.options = nil
    }
    
    /// Presents a sheet onto the coordinator navigation stack
    /// - Parameters:
    ///   - destination: the destination of the step
    ///   - options: presentation options
    init(present destination: Destination, options: PresentationOptions? = nil) {
        self.destination = destination
        self.type = .sheet
        self.options = options
    }
    
    /// Presents a full screen cover onto the coordinator navigation stack
    /// - Parameter destination: the destination of the step
    init(cover destination: Destination) {
        self.destination = destination
        self.type = .fullScreenCover
        self.options = nil
    }
}
