//
//  Selection.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2024/01/09.
//

import SwiftUI

struct Selection: View {
    
    @State var myDirection: Direction = .north
    
    var body: some View {
        
        VStack {
            
            switch myDirection {
            case .north:
                Text("북쪽은 추워요")
            case .west:
                Text("서쪽은 석양이 예뻐요")
            case .east:
                Text("동쪽으로 해 보러 갈래요?")
            case .south:
                Text("남쪽으로 쉬러가요!")
            default:
                Text("에러입니다.")
            }
            
            Button {
                
                if myDirection == .north {
                    
                } else if myDirection == .east {
                    
                }
                
                switch myDirection {
                case .north, .west:
                    myDirection = .east
                case .east:
                    myDirection = .south
                default:
                    myDirection = .north
                }
            } label: {
                Text("돌리기")
            }
            
        }
    }
}

struct Selection_Previews: PreviewProvider {
    static var previews: some View {
        Selection()
    }
}
