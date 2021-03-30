//
//  APIConstants.swift
//  MyToDo
//
//  Created by Tarun on 31/03/21.
//

import Foundation

struct APIConstants {
    public static var baseUrl = "http://baseUrl"
    public static var loginUrl = baseUrl+"/login"
    public static func getUrl(url: String) -> URL {
        return URL(string: url)!
    }
}
