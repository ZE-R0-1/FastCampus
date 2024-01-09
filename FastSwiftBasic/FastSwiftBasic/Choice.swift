//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2024/01/09.
//

import SwiftUI

struct Choice: View {
    
    var direction: Direction = .east
    var member: Member = .zero
    var menu: Menu = .steak("레어")
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다")
    }
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

enum Menu {
    case pasta
    case pizza(Int)
    case rareSteak
    case mediumSteak
    case weldoneSteak
    case steak(String)
}

enum Member: String {
    case leeo = "리이오"
    case tom = "톰"
    case zero = "제로"
    case bami = "바미"
    case koko = "코코"
}

struct Choice_Previews: PreviewProvider {
    static var previews: some View {
        Choice()
    }
}
