//
//  AppCoordinator.swift
//  Boilerplate
//
//  Created by Tarun on 31/03/21.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators = [String : Coordinator]()
    var navigationController: UINavigationController
    var window: UIWindow
    
    //----------------------------------
    //isLogin
    ///Check login status
    fileprivate var isLogin : Bool {
        return false
    }
    
    //----------------------------------
    //user email
    ///get user email
    fileprivate var userEmail : String {
        return "t@g.com"
    }
    
    init(navigationController : UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
    }
    
    //----------------------------------
    //start
    ///Take Decision
    func start() {
        if isLogin {
           //Show other VC
        } else {
            showLoginTop()
        }
    }
}

extension AppCoordinator : LoginTopCoordinatorProtocol {
    func didLoginFinished(email : String) {
        childCoordinators.removeValue(forKey: Common.KEY_LOGIN_COORDINATOR)
        // Open Coordinator for that page which need to be open after login
    }
    
    func showLoginTop() {
        let loginCoordinator = LoginTopCoordinator(navigationController: navigationController, window: window)
        loginCoordinator.delegate = self
        childCoordinators[Common.KEY_LOGIN_COORDINATOR] = loginCoordinator
        loginCoordinator.start()
    }
}
