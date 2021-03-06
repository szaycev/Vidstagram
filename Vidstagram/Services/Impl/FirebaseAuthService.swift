//
//  FirebaseAuthService.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 20.02.2021.
//

import Foundation
import FirebaseAuth

class FirebaseAuthService: AuthService {
    
    func createUser(withEmail email: String, password: String, fullname: String, complition: @escaping (Error?) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let result = result {
                let profileChangeRequest = result.user.createProfileChangeRequest()
                profileChangeRequest.displayName = fullname
                profileChangeRequest.commitChanges { error in
                    complition(error)
                }
            }
        }
    }
    
    func signIn(withEmail email: String, password: String, complition: @escaping (Error?) -> ()) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            complition(error)
        }
    }
}
