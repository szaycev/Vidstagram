//
//  PostsPresenter.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 20.02.2021.
//

import Foundation
import FirebaseFirestore

class PostsPresenter {
    
    //MARK: - Injection
    weak var view: PostsViewProtocol?
    let db = Firestore.firestore()
    
    
    //MARK: - Properties
    var posts: [PostPresentationModel] = []
    
    
    //MARK: - Private
    private func subscribe() {
        
        db.collection("posts").addSnapshotListener { [weak self] querySnapshot, error in
            
            guard let documents = querySnapshot?.documents else {
                print("Error fetching documents: \(error!)")
                return
            }
            
            self?.posts = documents.map { .init(title: $0.data()["title"] as! String,
                                                creatorName:  $0.data()["creatorName"] as! String,
                                                publicationTimestamp:  $0.data()["creaated"] as! Double)}
            self?.view?.displayPosts()
        }
    }
}


//MARK: - Protocol Implementation
extension PostsPresenter: PostsPresenterProtocol {
    
    func viewDidLoad() {
        subscribe()
    }
    
}
