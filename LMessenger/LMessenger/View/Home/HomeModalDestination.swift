//
//  HomeModalDestination.swift
//  LMessenger
//
//  Created by zero on 7/11/24.
//

import Foundation

enum HomeModalDestination: Hashable, Identifiable {
    case myProfile
    case otherProfile(String)
    
    var id: Int {
        hashValue
    }
}
