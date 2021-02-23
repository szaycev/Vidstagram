//
//  FirebaseCloudFirestoreService.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 23.02.2021.
//

import Foundation
import FirebaseFirestore

class FirebaseCloudFirestoreService: DatabaseService {
    
    private let db = Firestore.firestore()
    
    private static let postsCollection = "posts"
    
    
    func create(post: Post, complition: @escaping (Bool) -> ()) {
        db.collection(FirebaseCloudFirestoreService.postsCollection).addDocument(data: [
            "title": post.title,
            "creator": post.creator
        ]) { err in
            complition(err == nil)
        }
    }
}
