//
//  MockAuthService.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/24/24.
//

import Foundation

class MockAuthService: AuthServiceProtocol {
    
    var shouldSucced = true
    
    func login(email: String, password: String, completion: @escaping (Bool) -> Void) {
        completion(shouldSucced)
    }
    
    func register(email: String, password: String, completion: @escaping (Bool) -> Void) {
        completion(shouldSucced)
    }
    
    
}
