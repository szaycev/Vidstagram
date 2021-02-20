//
//  LoginSceneBuilder.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 18.02.2021.
//

import Foundation

struct LoginSceneBuilder {
    
    static func build() -> LoginViewController {
        
        let viewController = LoginViewController()
        let presenter = LoginPresenter()
        
        presenter.view = viewController
        viewController.presenter = presenter
        
        viewController.title = "Login"
        
        return viewController
    }
}
