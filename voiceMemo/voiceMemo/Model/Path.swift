//
//  PathModel.swift
//  voiceMemo
//
//  Created by KMUSER on 2024/01/29.
//

import Foundation

class PathModel: ObservableObject {
  @Published var paths: [PathType]
  
  init(paths: [PathType] = []) {
    self.paths = paths
  }
}
