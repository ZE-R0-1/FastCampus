//
//  HomeModalDestination.swift
//  LMessenger
//
//  Created by KMUSER on 2024/03/07.
//

import Foundation

enum HomeModalDestination: Hashable, Identifiable {
    case myProfile
    case otherProfile(String)
    
    var id: Int {
        hashValue
    }
}
