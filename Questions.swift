//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by MoSaiedZ on 30/04/2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation
struct Questions {
    
    var Text : String
    var Answer : [String]
    var correctAnswer : String
    
    init(q: String, a: [String], correctAnswer: String) {
        Answer = a
        Text = q
        self.correctAnswer = correctAnswer
    }
    
    
}
