//
//  MainCoordinator.swift
//  SwiftCoordinators
//
//  Created by Ahmed Abdallah on 25.07.2019.
//  Copyright © 2019 4A5. All rights reserved.
//

import Foundation
import UIKit


class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
       addViewController()
    }
    
}

// MARK: Add ViewController
extension MainCoordinator{
    
    func addViewController() {
        let vc =  ViewController.instantiate()
        vc.delegate = self
        navigationController.pushViewController(vc, animated: false)
    }
}

// MARK:  ViewControllerDelegate
extension MainCoordinator: ViewControllerDelegate{
    func buySubscription() {
        create()
    }
    func createAccount() {
        buy()
    }
}

// MARK:  Handle ViewController Flow Logic
extension MainCoordinator {
    func buy()
    {
        let vc = BuyViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
    func create() {
        let vc = CreatAccountViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
}
