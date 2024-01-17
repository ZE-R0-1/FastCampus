//
//  OnboardingSample.swift
//  WarmUp
//
//  Created by KMUSER on 2024/01/17.
//

import SwiftUI

struct OnboardingSample: View {
    
    let onboardingTitle: String
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            Text(onboardingTitle)
        }
    }
}

struct OnboardingSample_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSample(onboardingTitle: "온보딩 테스트", backgroundColor: .brown)
    }
}
