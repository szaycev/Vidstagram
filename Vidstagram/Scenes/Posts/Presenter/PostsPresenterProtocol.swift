//
//  PostsPresenterProtocol.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 20.02.2021.
//

import Foundation

protocol PostsPresenterProtocol: class {
    var posts: [PostPresentationModel] { get }
    func viewDidLoad()
}
