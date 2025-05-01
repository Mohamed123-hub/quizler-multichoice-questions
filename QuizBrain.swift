//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by MoSaiedZ on 30/04/2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain {
    let quiz = [Questions(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Questions(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                Questions(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                Questions(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                Questions(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                Questions(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                Questions(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                Questions(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                Questions(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                Questions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer(_ userAnswer: String)-> Bool{
        if userAnswer == quiz[questionNumber].correctAnswer{
            return true
        }else {
            score += 1
            return false
        }
        
        
    }
    mutating func questionText(){
        if questionNumber + 1 == quiz.count {
            self.questionNumber = 0
            score = 0
        }else {
            
            self.questionNumber += 1
        }
        
    }
    
    func nextQuestion()-> String {
        return quiz[questionNumber].Text
    }
    func answers()-> [String] {
        return quiz[questionNumber].Answer
    }
    
    func progressBar() -> Float{
        return Float(questionNumber + 1)/Float(quiz.count)
    }
    func scorebar()-> Int {
        return score
    }
    
    
}
