//
//  Setting.swift
//  WarmUp
//
//  Created by KMUSER on 2024/01/16.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
    let foregroundColor: Color = .white
}


struct Setting: View {
    
    let data: [[SettingInfo]] = [
        [SettingInfo(title: "스크린타임", systemName: "hourglass", backgroundColor: .purple)],
        [SettingInfo(title: "일반", systemName: "gearshape", backgroundColor: .gray),
        SettingInfo(title: "손쉬운 사용", systemName: "person.crop.circle", backgroundColor: .blue),
        SettingInfo(title: "개인정보 보호 및 보안", systemName: "hand.raised.fill", backgroundColor: .blue)],
        [SettingInfo(title: "암호", systemName: "key.fill", backgroundColor: .gray)]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data, id: \.self) { section in
                    Section {
                        ForEach(section, id: \.self) {
                            item in
                            Label {
                                Text(item.title)
                            } icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(.all, 7)
                                    .background(item.backgroundColor)
                                    .foregroundColor(.white)
                                    .cornerRadius(6)
                            }
                            
                        }
                    }
                    
                }
            }
            .navigationTitle("설정")
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
