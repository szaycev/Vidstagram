//
//  LoginPresenter.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 19.02.2021.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol {
    
    weak var view: LoginViewProtocol?
    
    
    func login(name: String?, phone: String?) {
        
        guard let name = name, let phone = phone else {
            view?.showError()
            return
        }
        view?.presentPostsScene()
    }
}

