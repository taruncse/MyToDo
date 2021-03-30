//
//  Common.swift
//  OwnMVVMC
//
//  Created by Tarun on 31/03/21.
//

import Foundation

struct Common {
    
    static let KEY_APP_COORDINATOR = "AppCoordinator"
    static let KEY_LOGIN_COORDINATOR = "LoginCoordinator"
    static let KEY_TAB_COORDINATOR = "TabCoordinator"
    static let KEY_TODO_DETAILS_COORDINATOR = "ToDoDetailsCoordinator"

    static func isValidateEmailFormat(_ email: String) -> Bool
    {
        /*let REGEX: String
        REGEX = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,32}"
        return NSPredicate(format: "SELF MATCHES %@", REGEX).evaluate(with: email)*/
        return email.count > 0
    }
    
    static func isValidatePasswordFormat(_ password: String) -> Bool
    {
        let trimmedString = password.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        return trimmedString.count > 0
    }
    
    static let EMPTY = ""

}
