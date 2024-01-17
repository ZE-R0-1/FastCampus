//
//  TabDetail.swift
//  WarmUp
//
//  Created by KMUSER on 2024/01/17.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("This is detail")
                Button {
                    
                } label: {
                    Text("Continue")
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                }

            }
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

struct TabDetail_Previews: PreviewProvider {
    static var previews: some View {
        TabDetail()
    }
}
