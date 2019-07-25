//
//  Coordinator.swift
//  SwiftCoordinators
//
//  Created by Ahmed Abdallah on 25.07.2019.
//  Copyright © 2019 4A5. All rights reserved.
//

import Foundation
import UIKit


protocol Coordinator {
    var childcoordinators: [Coordinator]{get set}
    var navigationController: UINavigationController{get set}
    
    func start()
}
