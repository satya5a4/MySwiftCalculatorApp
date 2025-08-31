//
//  BgColorViewModel.swift
//  NewSwiftCalculator
//
//  Created by Satya Palakodeti on 3/15/25.
//

import Foundation
import SwiftUI

enum AppTheme: String, CaseIterable {
    case light, dark, red

    var colorScheme: ColorScheme? {
        switch self {
        case .light:
            return .light
        case .dark:
            return .dark
        case .red:
            return .light
        }
    }

    var accentColor: Color {
        switch self {
        case .light:
            return .blue
        case .dark:
            return .orange
        case .red:
            return .cyan
        }
    }

    var backgroundColor: Color {
        switch self {
        case .light:
            return .white
        case .dark:
            return .black
        case .red:
            return Color.red.opacity(0.5)
        }
    }
}

class ThemeManager: ObservableObject{
    @Published var showGradient: Bool = true
    @Published var bgColor: Color = .white
    
    func updateColor(to color: Color) {
            showGradient = false
            bgColor = color
        }
}
