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
                    navigation.push(.banana, type: .sheet) {
                        print("Presented BananaView.")
                    }
                }
                
                Button("Cover BananaView") {
                    Task {
                        await navigation.push(.banana, type: .fullScreenCover)
                        print("Covered BananaView.")
                    }
                }
                
                Button("Deep link") {
                    navigation.push(.banana) {
                        navigation.push(.carrot) {
                            navigation.push(.damson, type: .fullScreenCover) {
                                navigation.push(.mango, type: .sheet) {
                                    navigation.push(.orange) {
                                        navigation.push(.pear, type: .sheet) {
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
}

#Preview {
    AppleView()
}
