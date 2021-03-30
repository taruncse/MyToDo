//
//  LoginDataModel.swift
//  Boilerplate
//
//  Created by Tarun on 31/03/21.
//

import Foundation

class LoginTopModel: Encodable, LoginTopModelProtocol {
    
    var email: String
    var password: String
    
    init(email : String , password : String) {
        self.email = email
        self.password = password
    }
}
