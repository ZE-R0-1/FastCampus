//
//  AuthenticatedView.swift
//  LMessenger
//
//  Created by KMUSER on 2024/02/27.
//

import SwiftUI

struct AuthenticatedView: View {
    @StateObject var authViewModel: AuthenticationViewModel
    
    var body: some View {
        switch authViewModel.authenticationStae {
        case .unauthenticated:
            LoginIntroView()
        case .authenticated:
            MainTabView()
        }
    }
}

struct AuthenticatedView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticatedView(authViewModel: .init(container: .init(services: StubService())))
    }
}

