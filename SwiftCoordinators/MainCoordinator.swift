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
    var childcoordinators = [Coordinator]()
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let vc =  ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    func BuySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func createAccount() {
        let vc = CreatAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
