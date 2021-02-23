//
//  DatabaseService.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 23.02.2021.
//

import Foundation

protocol DatabaseService {
    func create(post: Post, complition: @escaping (Bool) -> ())
}
