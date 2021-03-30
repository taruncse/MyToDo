//
//  LoginUserVM.swift
//  Boilerplate
//
//  Created by Tarun on 31/03/21.
//

import Foundation

class LoginTopViewModel: LoginTopViewModelProtocol {

    var model: LoginTopModelProtocol?
    weak var viewDelegate: LoginViewModelViewDelegate?
    weak var coordinatorDelegate: LoginViewModelCoordinatorDelegate?
    fileprivate var emailIsValidFormat : Bool = false
    fileprivate var passwordIsValidFormat : Bool = false
    
    var canSubmit : Bool {
        return emailIsValidFormat && passwordIsValidFormat
    }
    
    var errorMessage: String = "" {
        didSet {
            
        }
    }
    
    var email: String = "" {
        didSet {
            if oldValue != email {
                let oldCanSumbit = canSubmit
                emailIsValidFormat = Common.isValidateEmailFormat(email)
                if canSubmit != oldCanSumbit {
                    viewDelegate?.loginModelChanged(viewModel: self, canSumbit: canSubmit)
                }
            }
        }
    }
    
    var password: String = "" {
        didSet {
            if oldValue != password {
                let oldCanSumbit = canSubmit
                passwordIsValidFormat = Common.isValidatePasswordFormat(password)
                if canSubmit != oldCanSumbit {
                    viewDelegate?.loginModelChanged(viewModel: self, canSumbit: canSubmit)
                }
            }
        }
    }
    
    func login() {
        self.model = LoginTopModel(email: email, password: password)
    }
}
