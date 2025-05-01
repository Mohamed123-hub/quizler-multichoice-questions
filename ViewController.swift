//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreBar: UILabel!
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var Chosse1: UIButton!
    
    @IBOutlet weak var Chosse2: UIButton!
    
    @IBOutlet weak var Chosse3: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        updateUI()
       
    }
    
    @IBAction func chosseButton(_ sender: UIButton) {
        
        let userAnwers = sender.currentTitle!
        let getItRight = quizBrain.checkAnswer(userAnwers)
        
        if getItRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
            }

        quizBrain.questionText()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        
        
        
    }
    
 
    @objc func updateUI () {
        QuestionLabel.text = quizBrain.nextQuestion()
        let answers = quizBrain.answers()
           Chosse1.setTitle(answers[0], for: .normal)
           Chosse2.setTitle(answers[1], for: .normal)
           Chosse3.setTitle(answers[2], for: .normal)

           Chosse1.backgroundColor = UIColor.clear
           Chosse2.backgroundColor = UIColor.clear
           Chosse3.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.progressBar()
        scoreBar.text = "score: \(quizBrain.scorebar())"
        
        
    }
    
    
    
    
    
}
    
    
    
    
    
    


