//
//  EmailUtils.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 20.02.2021.
//

import Foundation

struct EmailUtils {
    
    static func generateEmail(from string: String) -> String {
        let email = string
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .filter{ !$0.isWhitespace }
            + "@vidstagram.com"
        return email
    }
}

