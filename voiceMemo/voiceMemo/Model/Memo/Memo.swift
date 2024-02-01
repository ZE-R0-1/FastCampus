//
//  Memo.swift
//  voiceMemo
//
//  Created by KMUSER on 2024/02/01.
//

import Foundation

struct Memo: Hashable {
  var title: String
  var content: String
  var date: Date
  var id = UUID()
  
  var convertedDate: String {
    String("\(date.formattedDay) - \(date.formattedTime)")
  }
}
