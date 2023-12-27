//
//  Condition.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2023/12/27.
//

import SwiftUI

struct Condition: View {
    
    var hasLoggedIn = true
    
    var body: some View {
        
        guard hasLoggedIn else {
            Text("로그인 하시겠습니까?")
        }
            Text("로그아웃 하시겠습니까?")
    }
}

struct Condition_Previews: PreviewProvider {
    static var previews: some View {
        Condition()
    }
}
