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
        
        if hasLoggedIn {
            return Text("Do you want to log out?")
        } else {
            return Text("Do you want to log in?")
        }
    }
}

struct Condition_Previews: PreviewProvider {
    static var previews: some View {
        Condition()
    }
}
