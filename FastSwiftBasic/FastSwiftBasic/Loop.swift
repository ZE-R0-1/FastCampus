//
//  Loop.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2023/12/27.
//

import SwiftUI

struct Loop: View {
    
    let names: [String] = ["리이오", "리이사", "춘리", "올리브", "바미", "나리"]
    var body: some View {
        VStack {
            ForEach(names, id: \.self) {
                item in
                Text(item)
            }
        }
    }
}

struct Loop_Previews: PreviewProvider {
    static var previews: some View {
        Loop()
    }
}
