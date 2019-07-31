//
//  ViewController.swift
//  SwiftCoordinators
//
//  Created by Ahmed Abdallah on 25.07.2019.
//  Copyright © 2019 4A5. All rights reserved.
//

import UIKit

public protocol ViewControllerDelegate: class{
        func buySubscription()
        func createAccount()
}

class ViewController: UIViewController,Storyboarded {
    
    weak var delegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        delegate?.createAccount()
    }
    @IBAction func buyTapped(_ sender: Any) {
        delegate?.buySubscription()
    }
}


