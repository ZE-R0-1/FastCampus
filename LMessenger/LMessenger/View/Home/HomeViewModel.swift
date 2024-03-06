//
//  HomeViewModel.swift
//  LMessenger
//
//  Created by KMUSER on 2024/03/06.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var myUser: User?
    @Published var users: [User] = [.stub1, .stub2]
}
