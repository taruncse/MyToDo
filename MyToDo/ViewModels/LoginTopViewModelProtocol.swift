//
//  LoginViewModel.swift
//  Boilerplate
//
//  Created by Tarun on 31/03/21.
//

import Foundation

protocol LoginViewModelViewDelegate : class {
    func loginModelChanged (viewModel : LoginTopViewModelProtocol, canSumbit : Bool)
    func loginStatus (viewModel : LoginTopViewModelProtocol?, message : String, isSuccessFull : Bool)

}
protocol LoginViewModelCoordinatorDelegate : class {
    func loginDidFinished (viewModel : LoginTopViewModelProtocol?)
}
protocol LoginTopViewModelProtocol : class {
    var model : LoginTopModelProtocol? { set get }
    var viewDelegate : LoginViewModelViewDelegate? { set get }
    var coordinatorDelegate : LoginViewModelCoordinatorDelegate? { set get }
    var canSubmit : Bool { get }
    var errorMessage : String { get set }
    var email : String { get set }
    var password : String { get set }
    func login()
}
