//
//  Half.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2024/01/05.
//

import SwiftUI

struct Half: View {
    
    var names: [String] = ["제로", "존", "바미", "테리우스", "올리비아"]
    
    var body: some View {
        List {
            ForEach(names, id: \.self) { name in
                var welcome = sayHi(to: name)
                if name == "제로" {
                    Text("기다렸어요. \(welcome)")
                } else {
                    Text(welcome)
                }
            }
        }
    }
    
    func sayHi(to name: String) -> String {
        return "\(name)님 반갑습니다."
    }
}

struct Half_Previews: PreviewProvider {
    static var previews: some View {
        Half()
    }
}
