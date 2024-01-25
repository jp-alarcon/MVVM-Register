//
//  RegisterValidation.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/18/24.
//

import Foundation

protocol validationProtocol {
    
    func isValidEmail(_ email: String) -> Bool
    func isValidPassword(_ password: String) -> Bool
    
}

struct Validation: validationProtocol {
    
    func isValidEmail(_ email: String) -> Bool {
        let emailTest = NSPredicate(format: "SELF MATCHES %@", RegExConstants.emailRegEx)
        
        return emailTest.evaluate(with: email)
    }
    
    func isValidPassword(_ password: String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", RegExConstants.passwordRegEx)
        
        return passwordTest.evaluate(with: password)
    }
    
}
