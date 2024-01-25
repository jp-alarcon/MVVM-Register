//
//  LoginViewModel.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/19/24.
//

import Foundation

class LoginViewModel {
    
    let authService: AuthServiceProtocol
    let validation: validationProtocol
    
    init(authService: AuthServiceProtocol, validation: validationProtocol) {
        self.authService = authService
        self.validation = validation
    }
    
    func loginUser(email: String, password: String, completion: @escaping (Bool) -> Void){
        authService.login(email: email, password: password, completion: completion)
    }
    
    func validate(email: String, password: String) -> Bool{
        return validation.isValidEmail(email) && validation.isValidPassword(password)
    }
    
}
