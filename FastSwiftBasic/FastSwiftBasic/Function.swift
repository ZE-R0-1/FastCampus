//
//  Function.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2024/01/04.
//

import SwiftUI

struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        VStack {
            Text("Input number is \(inputNumber)")
            
            Button {
                inputNumber = plusFive(input: inputNumber)
            } label: {
                Text("+5")
            }
        }
    }
    
    func plusFive(input: Int) -> Int {
        return input + 5
    }
}

struct Function_Previews: PreviewProvider {
    static var previews: some View {
        Function()
    }
}
