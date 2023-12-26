//
//  VariableType.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2023/12/22.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "zero"
    var age: Int = 20
    var height: Float = 183.6
    var weight: Double = 70.6
    var havePet: Bool = false
        
    var body: some View {
        VStack {    // 세로로 정렬
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")  // Text()에서 Bool타입은 description을 사용
        }
    }
}

struct VariableType_Previews: PreviewProvider {
    static var previews: some View {
        VariableType()
    }
}
