//
//  SessionManager.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/21/24.
//

import Foundation

class SessionManager {
    static let shared = SessionManager()
    
    private init() {}
    
    var isLoggedIn: Bool {
        UserDefaults.standard.bool(forKey: UserDefaultKeys.isLoggedIn)
    }
    
    func logIn() {
        UserDefaults.standard.set(true, forKey: UserDefaultKeys.isLoggedIn)
    }
    
    func logOut() {
        UserDefaults.standard.set(false, forKey: UserDefaultKeys.isLoggedIn)
    }
}


