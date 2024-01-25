//
//  RegisterViewController.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/18/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    lazy var registerViewModel = RegisterViewModel(authService: AuthService(), validation: Validation())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        screenInitialSetup()
    }
    
    func screenInitialSetup() {
        self.title = ScreenTitles.registerTitle
        
        registerButton.isEnabled = false
        
        emailTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @IBAction func registerTapped(_ sender: UIButton) {
        registerViewModel.registerUser(email: emailTextField.text!, password: passwordTextField.text!) { [weak self] success in
            switch success {
            case true:
                self?.performSegue(withIdentifier: SegueConstants.registerToLogin, sender: self)
            case false:
                print("register error")
            }
        }
    }
    

}

extension RegisterViewController: UITextFieldDelegate {
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        let success = registerViewModel.validate(email: emailTextField.text!, password: passwordTextField.text!)
        
        switch success {
        case true:
            registerButton.isEnabled = true
        case false:
            registerButton.isEnabled = false
        }
    }
    
}
