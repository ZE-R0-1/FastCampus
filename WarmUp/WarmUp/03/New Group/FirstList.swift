//
//  FirstList.swift
//  WarmUp
//
//  Created by KMUSER on 2024/01/17.
//

import SwiftUI

struct FirstList: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    Text("첫 번째 하위페이지 입니다")
                } label: {
                    Text("첫 번째 하위페이지")
                }
                
                NavigationLink {
                    Text("두 번째 하위페이지 입니다")
                } label: {
                    Text("두 번째 하위페이지")
                }
                
                NavigationLink {
                    Text("세 번째 하위페이지 입니다")
                } label: {
                    Text("세 번째 하위페이지")
                }
                
                NavigationLink {
                    Text("네 번째 하위페이지 입니다")
                } label: {
                    Text("네 번째 하위페이지")
                }
            }
            .navigationTitle("리스트")
        }
    }
}

struct FirstList_Previews: PreviewProvider {
    static var previews: some View {
        FirstList()
    }
}
