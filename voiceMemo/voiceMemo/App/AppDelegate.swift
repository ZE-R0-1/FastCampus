//
//  AppDelegate.swift
//  voiceMemo
//
//  Created by KMUSER on 2024/01/29.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
  var notificationDelegate = NotificationDelegate()
  
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
  ) -> Bool {
    UNUserNotificationCenter.current().delegate = notificationDelegate
    return true
  }
}
