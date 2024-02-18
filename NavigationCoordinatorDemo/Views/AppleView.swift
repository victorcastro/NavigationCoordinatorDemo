//
//  AppleView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 13.02.2024.
//

import SwiftUI

struct AppleView: View {
    var body: some View {
        NavigationCoordinator { navigation in
            List {
                Button("Push BananaView") {
                    navigation.push(.banana)
                }
                
                Button("Present BananaView") {
                    navigation.present(.banana) {
                        print("Presented BananaView.")
                    }
                }
                
                Button("Cover BananaView") {
                    Task {
                        await navigation.cover(.banana)
                        print("Covered BananaView.")
                    }
                }
                
                Button("Deep link") {
                    navigation.push(.banana) {
                        navigation.push(.carrot) {
                            navigation.cover(.damson) {
                                navigation.present(.mango) {
                                    navigation.push(.orange) {
                                        navigation.present(.pear) {
                                            print("Deep linking finished.")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                
                Button("Async Deep link") {
                    Task {
                        await navigation.push(.banana)
                        await navigation.push(.carrot)
                        await navigation.cover(.damson)
                        await navigation.present(.mango)
                        await navigation.push(.orange)
                        await navigation.present(.pear)
                        print("Deep linking finished.")
                    }
                }
            }
            .navigationTitle("AppleView")
        }
    }
}

#Preview {
    AppleView()
}
