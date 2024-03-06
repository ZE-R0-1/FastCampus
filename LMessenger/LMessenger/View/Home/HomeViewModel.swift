//
//  HomeViewModel.swift
//  LMessenger
//
//  Created by KMUSER on 2024/03/06.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    enum Action {
        case getUser
    }
    
    @Published var myUser: User?
    @Published var users: [User] = []
    
    private var userId: String
    private var container: DiContainer
    private var subscription = Set<AnyCancellable>()
    
    init(container: DiContainer, userId: String) {
        self.container = container
        self.userId = userId
    }
    
    func send(action: Action) {
        switch action {
        case .getUser:
            container.services.userService.getUser(userId: userId)
                .sink { completion in
                    //
                } receiveValue: { [weak self] user in
                    self?.myUser = user
                }.store(in: &subscription)

        }
    }
}
