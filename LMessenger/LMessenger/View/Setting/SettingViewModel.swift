//
//  SettingViewModel.swift
//  LMessenger
//
//  Created by KMUSER on 2024/03/18.
//

import Foundation

class SettingViewModel: ObservableObject {
    
    @Published var sectionItems: [SectionItem] = []

    init() {
        self.sectionItems = [
            .init(label: "모드설정", settings: AppearanceType.allCases.map { .init(item: $0) })
        ]
    }
}
