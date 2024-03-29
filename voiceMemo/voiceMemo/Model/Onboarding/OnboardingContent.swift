//
//  OnboardingContent.swift
//  voiceMemo
//
//  Created by KMUSER on 2024/01/29.
//

import Foundation

struct OnboardingContent: Hashable {
  var imageFileName: String
  var title: String
  var subTitle: String
  
  init(
    imageFileName: String,
    title: String,
    subTitle: String
  ) {
    self.imageFileName = imageFileName
    self.title = title
    self.subTitle = subTitle
  }
}
