//
//  MyText.swift
//  WarmUp
//
//  Created by KMUSER on 2024/01/16.
//

import SwiftUI

struct MyText: View {
    var textTitle: String
    var textFont: Font
    
    var body: some View {
        Text(textTitle)
            .font(textFont)
            .padding()
    }
}

struct MyText_Previews: PreviewProvider {
    static var previews: some View {
        MyText(textTitle: "Text Element 4", textFont: .largeTitle)
    }
}
