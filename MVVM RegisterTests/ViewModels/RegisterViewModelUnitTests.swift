//
//  RegisterViewModelUnitTests.swift
//  MVVM RegisterTests
//
//  Created by Pablo Alarcon on 1/23/24.
//

import XCTest
@testable import MVVM_Register

final class RegisterViewModelUnitTests: XCTestCase {
    
    var viewModel: RegisterViewModel!
    var mockAuthService: MockAuthService!
    
    override func setUp() {
        super.setUp()
        
        mockAuthService = MockAuthService()
        viewModel = RegisterViewModel(authService: mockAuthService, validation: Validation())
    }
    
    override func tearDown() {
        super.tearDown()
        
        mockAuthService = nil
        viewModel = nil
    }

    func test_RegisterUser_Success(){
        
        // Arrange
        mockAuthService.shouldSucced = true
        let email = "test@email.com"
        let password = "abcd1234"
        let expectation = XCTestExpectation()
        
        // Act
        mockAuthService.register(email: email, password: password) { success in
            // Assert
            XCTAssertTrue(success)
            expectation.fulfill()
        }
        
        // Wait
        wait(for: [expectation], timeout: 5.0)
        
    }
    
    func test_RegisterUser_Fail(){
        
        // Arrange
        mockAuthService.shouldSucced = false
        let email = "test@email.com"
        let password = "abcd1234"
        let expectation = XCTestExpectation()
        
        // Act
        mockAuthService.register(email: email, password: password) { success in
            // Assert
            XCTAssertFalse(success)
            expectation.fulfill()
        }
        
        // Wait
        wait(for: [expectation], timeout: 5.0)
        
    }

}
