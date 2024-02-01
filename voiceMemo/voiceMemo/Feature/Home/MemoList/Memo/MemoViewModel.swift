//
//  MemoViewModel.swift
//  voiceMemo
//
//  Created by KMUSER on 2024/02/01.
//

import Foundation

class MemoViewModel: ObservableObject {
  @Published var memo: Memo
  
  init(memo: Memo) {
    self.memo = memo
  }
}
