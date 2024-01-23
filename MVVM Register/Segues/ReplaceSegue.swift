//
//  ReplaceSegue.swift
//  MVVM Register
//
//  Created by Pablo Alarcon on 1/19/24.
//

import UIKit

class ReplaceSegue: UIStoryboardSegue {
    override func perform() {
        guard let navigationController = source.navigationController else {
            return
        }
        
        var controllerStack = navigationController.viewControllers
        controllerStack.removeLast()
        controllerStack.append(destination)
        
        navigationController.setViewControllers(controllerStack, animated: true)
    }
}
