//
//  LoginPresenter.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 19.02.2021.
//

import Foundation
import FirebaseAuth

class LoginPresenter: LoginPresenterProtocol {
    
    //MARK: Injection
    weak var view: LoginViewProtocol?
    var authService: AuthService?
    
    
    //MARK: - Protocol Implementation
    func login(with fullName: String?, phone: String?) {
        guard isValidFullname(fullName) && isValidPhoneNumber(phone) else {
            view?.showError(message: "Fullname or Phone Number is Invalid. Please try again!")
            return
        }
        let generatedUserEmail = EmailUtils.generateEmail(from: fullName!)
        let temporaryPassword = "123456"
        authService?.signIn(withEmail: generatedUserEmail, password: temporaryPassword) { [weak self] error in
            if let error = error as NSError?, let errorCode = AuthErrorCode(rawValue: error.code) {
                switch errorCode {
                case .userNotFound:
                    self?.authService?.createUser(withEmail: generatedUserEmail, password: temporaryPassword) { createUserError in
                        if createUserError == nil {
                            self?.view?.presentPostsScene()
                        }
                    }
                default:
                    self?.view?.showError(message: "Some error was occurred. Please try again!")
                }
            } else {
                self?.view?.presentPostsScene()
            }
        }
    }
}


//MARK: - Private
private extension LoginPresenter {
    
    func isValidFullname(_ name: String?) -> Bool {
        return name != nil && name != ""
    }
    
    func isValidPhoneNumber(_ phoneNumber: String?) -> Bool {
        return phoneNumber != nil && phoneNumber != ""
    }
}
