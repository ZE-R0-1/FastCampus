//
//  MyTab.swift
//  WarmUp
//
//  Created by KMUSER on 2024/01/17.
//

import SwiftUI

struct MyTab: View {
    var body: some View {
        TabView {
            TabDetail()
                .badge(2)
                .tabItem {
                    Label("Received2", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail2()
                .badge("제로")
                .tabItem {
                    Label("Sent2", systemImage: "tray.and.arrow.up.fill")
                }
            TabDetail3()
                .badge("제로")
                .tabItem {
                    Label("Sent2", systemImage: "person.crop.circle.fill")
                }
            Onboarding()
                .badge("!")
                .tabItem {
                    Label("Account2", systemImage: "person.crop.circle.fill")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct MyTab_Previews: PreviewProvider {
    static var previews: some View {
        MyTab()
    }
}
