//
//  AppleView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject private var navigation: Navigation
    
    var body: some View {
        List {
            Button("Push BananaView") {
                navigation.push(.banana)
            }
            
            Button("Push BananaView with onComplete") {
                navigation.push(.banana, onComplete: {
                    print("Pushed BananaView.")
                })
            }
            
            Button("Push BananaView with onDismiss") {
                navigation.push(.banana, onDismiss: {
                    print("Dismissed BananaView.")
                })
            }
            
            Button("Push BananaView with onComplete & onDismiss") {
                navigation.push(.banana) {
                    print("Pushed BananaView.")
                } onDismiss: {
                    print("Dismissed BananaView.")
                }
            }
            
            Button("Present BananaView") {
                navigation.push(.banana, type: .sheet) {
                    print("Presented BananaView.")
                } onDismiss: {
                    print("Dismissed BananaView.")
                }
            }
            
            Button("Cover BananaView") {
                Task {
                    await navigation.push(.banana, type: .fullScreenCover) {
                        print("Dismissed BanananView.")
                    }
                    print("Covered BananaView.")
                }
            }
            
            Button("Deep link") {
                navigation.push(.banana, onComplete: {
                    navigation.push(.carrot) {
                        navigation.push(.damson, type: .fullScreenCover, onComplete: {
                            navigation.push(.mango, type: .sheet, onComplete: {
                                navigation.push(.orange, onComplete: {
                                    navigation.push(.pear, type: .sheet, onComplete: {
                                        print("Deep linking finished.")
                                    })
                                })
                            })
                        })
                    } onDismiss: {
                        print("Dismissed CarrotView.")
                    }
                })
            }
            
            Button("Async Deep link") {
                Task {
                    await navigation.push(.banana)
                    await navigation.push(.carrot, onDismiss: {
                        print("Dismissed CarrotView.")
                    })
                    await navigation.push(.damson, type: .fullScreenCover)
                    await navigation.push(.mango, type: .sheet)
                    await navigation.push(.orange)
                    await navigation.push(.pear, type: .sheet)
                    print("Deep linking finished.")
                }
            }
        }
        .navigationTitle("AppleView")
    }
}

#Preview {
    AppleView()
}
