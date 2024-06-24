//
//  voiceMemoApp.swift
//  voiceMemo
//
//  Created by KMUSER on 2024/01/29.
//

import SwiftUI

@main
struct voiceMemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            OnboardingView()
        }
    }
}
