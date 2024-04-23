//
//  CustomModefiers.swift
//  Appetizers
//
//  Created by Yevhenii M on 11.04.2024.
//

import SwiftUI

struct StandartButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(BorderedButtonStyle())
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standartButtonStyle () -> some View {
        self.modifier(StandartButtonStyle())
    }
}
