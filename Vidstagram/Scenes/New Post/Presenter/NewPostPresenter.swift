//
//  NewPostPresenter.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 23.02.2021.
//

import Foundation

class NewPostPresenter: NewPostPresenterProtocol {
    
    //MARK: Injection
    weak var view: NewPostViewProtocol!
    var databaseService: DatabaseService!
    
    
    func createPost(_ post: Post) {
        databaseService.create(post: post) { [weak self] isCreated in
            self?.view.dissmissScreen(animated: true)
        }
    }
}
