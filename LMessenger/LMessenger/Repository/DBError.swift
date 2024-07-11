//
//  DBError.swift
//  LMessenger
//
//  Created by zero on 7/10/24.
//

import Foundation

enum DBError: Error {
    case error(Error)
    case emptyValue
    case invalidatedType
}
