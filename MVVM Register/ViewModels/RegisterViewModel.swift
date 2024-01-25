//
//  RegisterViewModel.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/18/24.
//

import Foundation

class RegisterViewModel {
    
    let authService: AuthServiceProtocol
    let validation: validationProtocol
    
    init(authService: AuthServiceProtocol, validation: validationProtocol) {
        self.authService = authService
        self.validation = validation
    }
    
    func registerUser(email: String, password: String, completion: @escaping (Bool) -> Void){
        authService.register(email: email, password: password, completion: completion)
    }
    
    func validate(email: String, password: String) -> Bool{
        return validation.isValidEmail(email) && validation.isValidPassword(password)
    }
    
}
