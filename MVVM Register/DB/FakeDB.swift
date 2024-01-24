//
//  MockDB.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/19/24.
//

import Foundation

class FakeDB {
    
    static let shared = FakeDB()
    
    var users: [User]
    
    private init(){
        users = [User(email: "test@user.com", password: "testuser1")]
    }
    
    func register(user: User) {
        users.append(user)
    }
    
    func checkCredentials(of user: User) -> Bool {
        return users.contains { dbUser in
            return dbUser.email == user.email && dbUser.password == user.password
        }
    }
}
