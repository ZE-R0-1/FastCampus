//
//  Sample.swift
//  FastSwiftBasic
//
//  Created by KMUSER on 2024/01/09.
//

import SwiftUI

struct Sample: View {
    
    let data = [
        Destination(direction: .north,
                    food: "파스타맛집",
                    image: Image(systemName: "applelogo")),
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName: "sunrise")),
        Destination(direction: .west,
                    food: nil,
                    image: Image(systemName: "trash")),
        Destination(direction: .south,
                    food: "순대맛집",
                    image: Image(systemName: "doc"))
    ]
    
    @State var selectedDestination: Destination?
    
    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            if let destination = selectedDestination {
                Text(destination.direction.rawValue)
                if let food = destination.food {
                    Text(food)
                }
            }
            Button {
                selectedDestination = data.randomElement()
            } label: {
                Text("돌려요!")
            }

        }
    }
}

struct Destination {
    let direction: Direction
    let food: String?
    let image: Image
}

struct Sample_Previews: PreviewProvider {
    static var previews: some View {
        Sample()
    }
}
