//
//  RegisterViewControllerTest.swift
//  MVVM RegisterTests
//
//  Created by Pablo Alarcon on 1/23/24.
//

import XCTest
@testable import MVVM_Register

final class ValidationUnitTests: XCTestCase {
    
    var validation: validationProtocol!
    
    override func setUp() {
        super.setUp()
        
        validation = Validation()
    }
    
    override func tearDown() {
        super.tearDown()
        
        validation = nil
    }

    func testIsValidEmail_ValidEmail_ReturnsTrue() {
        
        // Arrange
        let email = "test@email.com"
        
        // Act
        let result = validation.isValidEmail(email)
        
        // Assert
        XCTAssertTrue(result)
        
    }
    
    func testIsValidEmail_InvalidEmail_ReturnsFalse() {
        
        // Arrange
        let email = "testemail.com"
        
        // Act
        let result = validation.isValidEmail(email)
        
        // Assert
        XCTAssertFalse(result)
        
    }
    
    func testIsValidPassword_ValidPassword_ReturnsTrue() {
        
        
        // Arrange
        let password = "abcd1234"
        
        // Act
        let result = validation.isValidPassword(password)
        
        // Assert
        XCTAssertTrue(result)
        
    }
    
    func testIsValidPassword_InvalidPassword_ReturnsFalse() {
        
        // Arrange
        let password = "abc"
        
        // Act
        let result = validation.isValidPassword(password)
        
        // Assert
        XCTAssertFalse(result)
    }

}
