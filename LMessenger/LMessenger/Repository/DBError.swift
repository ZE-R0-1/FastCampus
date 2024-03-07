//
//  DBError.swift
//  LMessenger
//
//  Created by KMUSER on 2024/03/06.
//

import Foundation

enum DBError: Error {
    case error(Error)
    case emptyValue
    case invalidatedType
}
