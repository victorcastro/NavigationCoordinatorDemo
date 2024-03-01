//
//  NavigationCoordinator.swift
//  NavigationCoordinator
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

struct NavigationCoordinator<Content: View>: View {
    
    @ViewBuilder var content: (Navigation) -> Content
    let onDismiss: ((Destination) -> Void)?
    
    /// Container view for coordinator navigation
    /// - Parameter content: the content view
    init(content: @escaping (Navigation) -> Content, onDismiss: ((Destination) -> Void)? = nil) {
        self.content = content
        self.onDismiss = onDismiss
    }
    
    @EnvironmentObject private var navigation: Navigation
    @State private var isPresented = false
    @State private var navigationStep = NavigationStep(push: .none)
    @State private var destinationIndex = -1
    @State private var dismissedDestination: Destination = .none
    
    var body: some View {
        content(navigation)
            .if(destinationIndex != -1, transform: { view in
                view
                    .navigation(navigationStep.type, isPresented: $isPresented, onDismiss: {
                        onDismiss?(dismissedDestination)
                    }, destination: {
                        if destinationIndex < navigation.stack.count - 1 {
                            navigation.stack[destinationIndex + 1].destination
                                .navigationBarBackButtonHidden()
                        }
                    })
//                    .navigation(navigationStep.type, isPresented: $isPresented) {
//                        if destinationIndex < navigation.stack.count - 1 {
//                            navigation.stack[destinationIndex + 1].destination
//                                .navigationBarBackButtonHidden()
//                        }
//                    }
                    .onReceive(navigation.$isPresented) { isPresented in
                        if destinationIndex < isPresented.count {
                            self.isPresented = isPresented[destinationIndex]
                        }
                    }
                    .onChange(of: isPresented) { _, newValue in
                        if !newValue {
                            let lastSheetIndex = navigation.stack.lastIndex { naviagtionStep in
                                naviagtionStep.type == .sheet
                            }
                            
                            if let lastSheetIndex = lastSheetIndex {
                                if navigation.isPopping {
                                    remove(1)
                                    navigation.isPopping = false
                                } else {
                                    let last = navigation.stack.count - lastSheetIndex
                                    remove(last)
                                }
                            } else {
                                remove(1)
                            }
                        } else {
                            print("Presenting: \(navigation.stack[destinationIndex + 1].destination)")
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
    
    func remove(_ last: Int) {
        navigation.stack.removeLast(last)
        navigation.isPresented.removeLast(last)
        navigation.destinationIndex -= last
    }
}
