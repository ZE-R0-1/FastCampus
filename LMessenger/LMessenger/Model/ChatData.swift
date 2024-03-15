//
//  ChatData.swift
//  LMessenger
//
//  Created by KMUSER on 2024/03/15.
//

import Foundation

struct ChatData: Hashable, Identifiable {
    var dateStr: String
    var chats: [Chat]
    var id: String { dateStr }
}
