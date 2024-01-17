//
//  Modal.swift
//  WarmUp
//
//  Created by KMUSER on 2024/01/16.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("메인 페이지 입니다")
            Button {
                showModal = true
            } label: {
                Text("Modal 화면 전환")
            }
            .sheet(isPresented: $showModal) {
                Detail(isPresented: $showModal)
            }
        }
    }
}

struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        Modal()
    }
}
