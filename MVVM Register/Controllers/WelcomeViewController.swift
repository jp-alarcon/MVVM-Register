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
        
        self.title = "Welcome"
        
        if SessionManager.shared.isLoggedIn {
            self.performSegue(withIdentifier: SegueConstants.welcomeToHome, sender: nil)
        }
        // Do any additional setup after loading the view.
    }


}

