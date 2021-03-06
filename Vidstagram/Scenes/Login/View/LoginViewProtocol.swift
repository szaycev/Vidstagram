//
//  LoginViewProtocol.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 19.02.2021.
//

import Foundation

protocol LoginViewProtocol: class {
    func showError(message: String?)
    func presentPostsScene()
}
