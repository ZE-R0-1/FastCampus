//
//  Detail.swift
//  WarmUp
//
//  Created by KMUSER on 2024/01/16.
//

import SwiftUI

struct Detail: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("모달 페이지 입니다2")
        Button {
            isPresented = false
        } label: {
            Text("닫기")
        }

    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(isPresented: .constant(true))
    }
}
