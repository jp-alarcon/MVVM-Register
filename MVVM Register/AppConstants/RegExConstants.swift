//
//  RegExConstants.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/24/24.
//

import Foundation

struct RegExConstants {
    
    static let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    static let passwordRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
    
}
