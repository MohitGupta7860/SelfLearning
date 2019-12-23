//
//  AppCoordinator.swift
//  SelfLearning
//
//  Created by Mohit on 22/12/19.
//  Copyright © 2019 Mohit. All rights reserved.
//

import UIKit
import Foundation

class AppCoordinator: CoordinatorProtocol {
     let window: UIWindow?
     var rootNavigationController: UINavigationController!
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        guard let window = window else { return }
        let farmerViewModel = FarmerViewModel(farmerList: [Farmer]())
        let farmerVC = FarmerViewController(farmerViewModel: farmerViewModel)
        rootNavigationController = UINavigationController(rootViewController: farmerVC)
        window.rootViewController = rootNavigationController
        window.makeKeyAndVisible()
    }
}
