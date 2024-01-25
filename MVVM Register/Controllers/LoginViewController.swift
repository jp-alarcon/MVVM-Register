//
//  LoginViewController.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/18/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    lazy var loginViewModel = LoginViewModel(authService: AuthService(), validation: Validation())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        screenInitialSetup()
    }
    
    func screenInitialSetup() {
        self.title = ScreenTitles.loginTitle
        
        loginButton.isEnabled = false
        
        emailTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        loginViewModel.loginUser(email: emailTextField.text!, password: passwordTextField.text!) { [weak self] success in
            switch success {
            case true:
                SessionManager.shared.logIn()
                self?.performSegue(withIdentifier: SegueConstants.loginToHome, sender: self)
            case false:
                print("login error")
            }
        }
    }

}

extension LoginViewController: UITextFieldDelegate {
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        let success = loginViewModel.validate(email: emailTextField.text!, password: passwordTextField.text!)
        
        switch success {
        case true:
            loginButton.isEnabled = true
        case false:
            loginButton.isEnabled = false
        }
        
    }
    
}
