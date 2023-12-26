//
//  ContentView.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2023/12/22.
//

import SwiftUI

struct ContentView: View {
    
    
    var place: String = "Korea"
    var name: String = "zero"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(name)님 안녕하세요")
            Text(name)
            Text("\(place) 최고")
            Text(place)
            Text(place)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
