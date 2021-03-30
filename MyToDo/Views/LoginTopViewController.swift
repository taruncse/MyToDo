//
//  LoginTopViewController.swift
//  MyToDo
//
//  Created by Tarun on 31/03/21.
//

import UIKit

class LoginTopViewController: UIViewController, Storyboarded {
    var viewModel : LoginTopViewModelProtocol? {
        willSet {
            viewModel?.viewDelegate = nil
        }
        
        didSet {
            viewModel?.viewDelegate = self
           // refreshView()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension LoginTopViewController : LoginViewModelViewDelegate {
    func loginModelChanged(viewModel: LoginTopViewModelProtocol, canSumbit : Bool) {
        /*if canSumbit {
            self.loinBtn.isEnabled = true
        }else {
            self.loinBtn.isEnabled = false
        }*/
    }
    
    func loginStatus(viewModel: LoginTopViewModelProtocol?, message: String, isSuccessFull : Bool) {
       /* if isSuccessFull {
            self.loginStatusLbl.textColor = .green
        } else {
            self.loginStatusLbl.textColor = .red
        }
        self.loginStatusLbl.text = message*/
    }

}
