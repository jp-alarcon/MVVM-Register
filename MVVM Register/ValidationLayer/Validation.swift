//
//  RegisterValidation.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/18/24.
//

import Foundation

protocol validationProtocol: AnyObject {
    func isValidEmail(_ email: String) -> Bool
    func isValidPassword(_ password: String) -> Bool
}

class Validation: validationProtocol {
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        return emailTest.evaluate(with: email)
    }
    
    func isValidPassword(_ password: String) -> Bool {
        let passwordRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
        
        return passwordTest.evaluate(with: password)
    }
    
    
}
