//
//  AuthService.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/19/24.
//

import Foundation

protocol AuthServiceProtocol: AnyObject {
    
    func login(email: String, password: String, completion: @escaping (Bool) -> Void)
    func register(email: String, password: String, completion: @escaping (Bool) -> Void)
    
}

class AuthService: AuthServiceProtocol {
    
    func login(email: String, password: String, completion: @escaping (Bool) -> Void) {
        let success = FakeDB.shared.checkCredentials(of: User(email: email, password: password))
        completion(success)
    }
    
    func register(email: String, password: String, completion: @escaping (Bool) -> Void) {
        FakeDB.shared.register(user: User(email: email, password: password))
        completion(true)
    }
    
}
