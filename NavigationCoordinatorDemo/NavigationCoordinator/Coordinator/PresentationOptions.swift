//
//  PresentationOptions.swift
//  NavigationCoordinator
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

struct PresentationOptions {
    var detents: Set<PresentationDetent>
    var cornerRadius: CGFloat?
    var dragIndicatorVisibility: Visibility
    var contentInteraction: PresentationContentInteraction
    var backgroundInteraction: PresentationBackgroundInteraction
    var interactiveDismissDisabled: Bool
    
    init(detents: Set<PresentationDetent> = [],
         cornerRadius: CGFloat? = nil,
         dragIndicatorVisibility: Visibility = .automatic,
         contentInteraction: PresentationContentInteraction = .automatic,
         backgroundInteraction: PresentationBackgroundInteraction = .automatic,
         interactiveDismissDisabled: Bool = false) {
        self.detents = detents
        self.cornerRadius = cornerRadius
        self.dragIndicatorVisibility = dragIndicatorVisibility
        self.contentInteraction = contentInteraction
        self.backgroundInteraction = backgroundInteraction
        self.interactiveDismissDisabled = interactiveDismissDisabled
    }
}
