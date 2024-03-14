//
//  NavigationDestination.swift
//  LMessenger
//
//  Created by KMUSER on 2024/03/14.
//

import Foundation

enum NavigationDestination: Hashable {
    case chat(chatRoomId: String, myUserId: String, otherUserId: String)
    case search(userId: String)
}
