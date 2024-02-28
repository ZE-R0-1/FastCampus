//
//  LMessengerApp.swift
//  LMessenger
//
//  Created by KMUSER on 2024/02/27.
//

import SwiftUI

@main
struct LMessengerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var container: DiContainer = .init(services: Services())
    var body: some Scene {
        WindowGroup {
            AuthenticatedView(authViewModel: .init(container: container))
                .environmentObject(container)
        }
    }
}
