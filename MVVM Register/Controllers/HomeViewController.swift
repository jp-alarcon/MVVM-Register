//
//  HomeViewController.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/18/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        self.navigationItem.hidesBackButton = true
    }
    
    @IBAction func logoutTapped(_ sender: UIButton) {
        SessionManager.shared.logOut()
        navigationController?.popToRootViewController(animated: true)
    }
    
}
