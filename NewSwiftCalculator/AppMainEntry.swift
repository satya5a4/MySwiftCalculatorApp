//
//  NewSwiftCalculatorApp.swift
//  NewSwiftCalculator
//
//  Created by Satya Palakodeti on 12/17/24.
//

import SwiftUI
import Foundation




@main
struct NewSwiftCalculatorApp: App {
    // Fix: Add import statement for BgColorViewModel to resolve 'Cannot find 'ThemeManager' in scope'
    @StateObject var themeManager = ThemeManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
        }
    }
}
