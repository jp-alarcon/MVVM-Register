//
//  ViewController.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/18/24.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkSession()
        screenInitialSetup()
    }
    
    func checkSession() {
        if SessionManager.shared.isLoggedIn {
            self.performSegue(withIdentifier: SegueConstants.welcomeToHome, sender: nil)
        }
    }
    
    func screenInitialSetup() {
        self.title = ScreenTitles.welcomeTitle
    }

}

