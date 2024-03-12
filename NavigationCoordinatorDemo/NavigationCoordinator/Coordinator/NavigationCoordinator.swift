//
//  NavigationCoordinator.swift
//  NavigationCoordinator
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

@MainActor
struct NavigationCoordinator<Content: View>: View {
    
    @ViewBuilder var content: () -> Content
    
    /// Container view for coordinator navigation
    /// - Parameter content: the content view
    init(content: @escaping () -> Content) {
        self.content = content
    }
    
    @Environment(\.navigation) var navigation
    @State private var isPresented = false
    @State private var navigationStep = NavigationStep(push: .none)
    @State private var destinationIndex = -1
    @State private var dismissedDestination: Destination? = nil
    
    var body: some View {
        content()
            .if(destinationIndex != -1, transform: { view in
                view
                    .navigation(navigationStep.type, isPresented: $isPresented, onDismiss: {
                        navigation.dismissedDestination = dismissedDestination
                    }, destination: {
                        if destinationIndex < navigation.stack.count - 1 {
                            navigation.stack[destinationIndex + 1].destination
                                .navigationBarBackButtonHidden()
                        }
                    })
                    .onReceive(navigation.$isPresented) { isPresented in
                        if destinationIndex < isPresented.count {
                            self.isPresented = isPresented[destinationIndex]
                        }
                    }
                    .onChange(of: isPresented) { _, newValue in
                        if newValue {
                            dismissedDestination = navigation.stack[destinationIndex + 1].destination
                        }
                    }
                    .onReceive(navigation.$stack) { stack in
                        if destinationIndex < stack.count - 1 {
                            self.navigationStep = stack[destinationIndex + 1]
                        }
                    }
            })
            .onFirstAppear {
                destinationIndex = navigation.stack.count - 1
                navigation.destinationIndex = destinationIndex
            }
    }
}
