//
//  StringFormater.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 23.02.2021.
//

import Foundation


class StringFormater {
    
    class func timestampToDate(_ timestamp: Double, format: String) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.dateFormat = format
        let date = Date(timeIntervalSince1970: timestamp)
        return formatter.string(from: date)
    }
}
