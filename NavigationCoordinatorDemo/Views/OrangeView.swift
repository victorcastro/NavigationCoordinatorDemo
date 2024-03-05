//
//  OrangeView.swift
//  NavigationCoordinatorDemo
//
//  Created by Alex Nagy on 16.02.2024.
//

import SwiftUI

struct OrangeView: View {
    
//    @Environment(\.dismiss) private var dismiss // *DO NOT* use `dismiss` for coordinator navigation
    
    @EnvironmentObject private var navigation: Navigation
    
    var body: some View {
        List {
            Button("Pop") {
                navigation.pop() {
                    print("Completed popping.")
                }
            }
            
            Button("Pop to root") {
                navigation.popToRoot() {
                    print("Completed popping to root.")
                }
            }
            
            Button("Pop to last modal root") {
                navigation.popToRoot(.lastModal) {
                    print("Completed popping to last modal root.")
                }
            }
            
            Button("Pop to first modal root") {
                navigation.popToRoot(.firstModal) {
                    print("Completed popping to first modal root.")
                }
            }
            
            Button("Pop to modal root 2") {
                navigation.popToRoot(.modal(count: 2)) {
                    print("Completed popping to modal root 2.")
                }
            }
            
            Button("Pop last 3") {
                navigation.pop(last: 3) {
                    print("Completed popping last 3.")
                }
            }
            
            Button("Pop to BananaView") {
                navigation.pop(to: .banana) {
                    print("Completed popping to banana.")
                }
            }
            
            Button("Replace with PearView") {
                navigation.replace(with: .pear) {
                    print("Completed replacing with pear.")
                }
            }
            
        }
        .navigationTitle("OrangeView")
        .navigationBarBackButton(iconSystemName: nil, title: "Cancel")
    }
}

#Preview {
    OrangeView()
}
