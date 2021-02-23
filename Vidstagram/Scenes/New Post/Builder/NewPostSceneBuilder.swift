//
//  NewPostSceneBuilder.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 23.02.2021.
//

import Foundation

struct NewPostSceneBuilder {
    
    static func build() -> NewPostViewController {
        
        let viewController = NewPostViewController()
        let presenter = NewPostPresenter()
         
        presenter.view = viewController
        presenter.databaseService = FirebaseCloudFirestoreService()
        
        viewController.presenter = presenter
        
        return viewController
    }
}
