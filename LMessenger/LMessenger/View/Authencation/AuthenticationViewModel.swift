//
//  AuthenticationViewModel.swift
//  LMessenger
//
//  Created by KMUSER on 2024/02/27.
//

import Foundation
import Combine

enum AuthenticationStae {
    case unauthenticated
    case authenticated
}

class AuthenticationViewModel: ObservableObject {
    
    enum Action {
        case googleLogin
    }
    
    @Published var authenticationStae: AuthenticationStae = .unauthenticated
    
    var userId: String?
    
    private var container: DiContainer
    private var subscriptions = Set<AnyCancellable>()
    
    init(container: DiContainer) {
        self.container = container
    }
    
    func send(action: Action) {
        switch action {
        case .googleLogin:
            container.services.authService.signInWithGoogle()
                .sink { completion in
                    //
                } receiveValue: { [weak self] user in
                    self?.userId = user.id
                }.store(in: &subscriptions)

        }
    }
}
