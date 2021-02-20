//
//  PostsSceneBuilder.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 20.02.2021.
//

import Foundation

struct PostsSceneBuilder {
   
    static func build() -> PostsTableViewController {
        
        let viewController = PostsTableViewController()
        let presenter = PostsPresenter()
        
        presenter.view = viewController
        viewController.presenter = presenter
        
        viewController.title = "Posts"
        
        return viewController
    }
}
