//
//  LoginCoordinator.swift
//  Boilerplate
//
//  Created by Tarun on 31/03/21.
//

import Foundation
import UIKit

protocol LoginTopCoordinatorProtocol {
    ///Return information to previous Coordinator
    func didLoginFinished(email : String)
}

class LoginTopCoordinator: Coordinator {
    
    var delegate : LoginTopCoordinatorProtocol?
    
    var childCoordinators = [String : Coordinator]()

    var navigationController: UINavigationController
    var window: UIWindow
    
    var loginLoordinatorDelegate : LoginTopCoordinatorProtocol?
    
    init(navigationController : UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
    }
    
    func start() {
        let loginVC = LoginTopViewController.instantiate()
        let loginViewModel = LoginTopViewModel()
        loginViewModel.model = LoginTopModel(email: Common.EMPTY, password: Common.EMPTY)
        loginViewModel.coordinatorDelegate = self
        loginVC.viewModel = loginViewModel
        window.rootViewController = loginVC
        //self.navigationController.pushViewController(loginVC, animated: true)
    }
}

extension LoginTopCoordinator : LoginViewModelCoordinatorDelegate {
    func loginDidFinished(viewModel: LoginTopViewModelProtocol?) {
        if let viewModel = viewModel {
            self.delegate?.didLoginFinished(email: viewModel.email)
        }
    }
}
