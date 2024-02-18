//
//  NavigationReaderBackButtonModifier.swift
//  NavigationCoordinator
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct NavigationReaderBackButtonModifier: ViewModifier {
    
    @EnvironmentObject private var navigation: Navigation
    
    let isShown: Bool
    let iconSystemName: String?
    let title: String?
    
    func body(content: Content) -> some View {
        content
            .if(isShown, transform: { view in
                view.toolbar(content: {
                    ToolbarItem(placement: .cancellationAction) {
                        Button {
                            navigation.pop()
                        } label: {
                            HStack(spacing: 0) {
                                if let iconSystemName = iconSystemName {
                                    Image(systemName: iconSystemName)
                                }
                                if let title = title {
                                    Text(title)
                                }
                                if iconSystemName == nil && title == nil {
                                    Image(systemName: "chevron.backward")
                                }
                            }
                        }
                    }
                })
            })
            
    }
}

extension View {
    /// Shows the navigation bar back button for the view.
    /// - Parameters:
    ///   - isShown: A Boolean value that indicates whether to
    ///   show the back button. The default value is `true`.
    ///   - iconSystemName: System image name for the button icon. The default value is `chevron.backward`.
    ///   - title: Title for the back button. The default value is `Back`.
    func navigationBarBackButtonShown(_ isShown: Bool = true, iconSystemName: String? = "chevron.backward", title: String? = "Back") -> some View {
        self.modifier(NavigationReaderBackButtonModifier(isShown: isShown, iconSystemName: iconSystemName, title: title))
    }
}


