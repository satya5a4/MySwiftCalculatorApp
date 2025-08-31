//
//  ToastManager.swift
//  NewSwiftCalculator
//
//  Created by Satya Palakodeti on 8/23/25.
//
import SwiftUI
import SimpleToast

class ToastManager: ObservableObject {
    static let shared = ToastManager()
    
    @Published var isPresented: Bool = false
    @Published var message: String = ""
    @Published var type: ToastType = .info
    
    private init() {}
    
    func show(message: String, type: ToastType = .info) {
        self.message = message
        self.type = type
        self.isPresented = true
    }
}

enum ToastType {
    case success
    case error
    case info
    
    var backgroundColor: Color {
        switch self {
        case .success: return Color.green.opacity(0.85)
        case .error: return Color.red.opacity(0.85)
        case .info: return Color.blue.opacity(0.85)
        }
    }
}
