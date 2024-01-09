//
//  Option.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2024/01/09.
//

import SwiftUI

struct Option: View {
    
    var zero: People? = People(name: "zero", mbti: MBTI(name: "ENFP"))
    var bami = People(name: "bami", petName: "coco")
    var berry = People(name: "berry", petName: "cookie")
    
    var body: some View {
        VStack {
            
            if let zero = zero {
                if let mbti = zero.mbti {
                    if let name = mbti.name {
                        
                    }
                }
            }
            
            if let zeroMbtiName = zero?.mbti?.name {
                Text(zeroMbtiName)
            } else {
                Text("No MBTI name")
            }
            
//            if let petName = zero.petName {
//                Text("이름은 \(zero.name) 애완동물 이름은 \(petName)")
//            } else {
//                Text("이름은 \(zero.name) 애완동물 이름은 없어요")
//            }
            
            if let petName = bami.petName {
                Text("이름은 \(bami.name) 애완동물 이름은 \(petName)")
            }
            
            if let petName = berry.petName {
                Text("이름은 \(berry.name) 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(berry.name) 애완동물 이름은 없어요")
            }
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}


struct Option_Previews: PreviewProvider {
    static var previews: some View {
        Option()
    }
}
