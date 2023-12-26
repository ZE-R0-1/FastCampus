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
    var hiphop: Set<String> = ["labjap", "rap", "wow"]
    
    var body: some View {
        VStack {
            Text(foods[0])
            Text(foods[1])
            Text(hiphop.intersection(jazzs))
        }
    }
}

struct MyCollections_Previews: PreviewProvider {
    static var previews: some View {
        MyCollections()
    }
}
