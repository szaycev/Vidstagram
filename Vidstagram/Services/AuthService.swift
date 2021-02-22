//
//  AuthService.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 20.02.2021.
//

import Foundation

protocol AuthService: class {
    func createUser(withEmail email: String, password: String, complition: @escaping (Error?) -> ())
    func signIn(withEmail email: String, password: String, complition: @escaping (Error?) -> ())
}
