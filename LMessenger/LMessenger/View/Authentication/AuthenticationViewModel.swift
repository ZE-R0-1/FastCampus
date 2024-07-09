//
//  AuthenticationViewModel.swift
//  LMessenger
//
//  Created by zero on 7/9/24.
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
    
    @Published var authenticationState: AuthenticationStae = .unauthenticated
    
    var userId: String?
    
    private var container: DIContainer
    private var subscriptions = Set<AnyCancellable>()
    
    init(container: DIContainer) {
        self.container = container
    }
    
    func send(action: Action) {
        switch action {
        case .googleLogin:
            container.service.authService.signInWithGoogle()
                .sink { completion in
                    //
                } receiveValue: { [weak self] user in
                    self?.userId = user.id
                }.store(in: &subscriptions)
        }
    }
}
