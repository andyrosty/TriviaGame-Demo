//
//  Answer.swift
//  TriviaGame Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text : AttributedString
    var isCorrect: Bool
    
}
