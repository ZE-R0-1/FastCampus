//
//  MyCollections.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2023/12/22.
//

import SwiftUI

struct MyCollections: View {
    
    var foods: [String] = ["eggs", "bananas", "beans"]
    var jazzs: Set<String> = ["bibijiji", "labdap", "didididi"]
    var hiphop: Set<String> = ["labdap", "rap", "wow"]
    var koEngDict: [String:String] = ["사과":"Apple", "바나나":"Banana"]
    
    var body: some View {
        VStack {
            
            Text(hiphop.intersection(jazzs).description)
            
            Button {
                let intersectionMusic = hiphop.intersection(jazzs)
                intersectionMusic.description
            } label: {
                Text("hit!")
            }
            
            Text(koEngDict["사과"]!)
            Text(koEngDict["바나나"]!)
            
            Text(foods[2])
        }
    }
}

struct MyCollections_Previews: PreviewProvider {
    static var previews: some View {
        MyCollections()
    }
}
