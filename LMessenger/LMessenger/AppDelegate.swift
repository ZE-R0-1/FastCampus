//
//  AppDelegate.swift
//  LMessenger
//
//  Created by KMUSER on 2024/02/28.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {    FirebaseApp.configure()

    return true
  }
}
