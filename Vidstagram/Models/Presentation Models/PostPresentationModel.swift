//
//  PostPresentationModel.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 23.02.2021.
//

import Foundation

struct PostPresentationModel {

    var title: String
    var creatorName: String
    var publicationTimestamp: Double
    
    var publicationDate: String  {
        return StringFormater.timestampToDate(publicationTimestamp, format: "MMM d, h:mm a")
    }
}
