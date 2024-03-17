//
//  PushObject.swift
//  LMessenger
//
//  Created by KMUSER on 2024/03/17.
//

import Foundation

struct PushObject: Encodable {
    var to: String
    var notification: NotificationObject
    
    struct NotificationObject: Encodable {
        var title: String
        var body: String
    }
}
