//
//  ViewController.swift
//  khal3470_a1
//
//  Created by Murtaza Khalid on 2023-01-21.
//

import UIKit

class ViewController: UIViewController {
    var questionsArray: [String] = ["What’s your name?", "What do you do for fun?", "What is your favourite food?", "What country would you like to visit?", "What superpower would you choose?", "What is your favourite movie?"]
    var answersArray: [String] = ["Murtaza", "Boxing", "Pasta", "Australia", "Teleportation", "Whiplash"]
    var picArray: [String] = ["me.png", "boxing.png", "pasta.png", "australia.png", "telep.png", "whiplash.png"]
    var currentImage = UIImage(named: "me.jpg")
    var current = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // initializing the questions, answers, and pictures arrays
        // Showing the first questions and image
        question.text = questionsArray[current]
        currentImage = UIImage(named: picArray[current]) // set an UIImage
        imageView.image = currentImage // set UIImageView to UIImage
        answer.text = "..."
    }


    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answer: UILabel!
    
    
    @IBAction func showAns(_ sender: UIButton) {
        // showAns linked to Show Snswer button which reveals the answer
        answer.text = answersArray[current]
    }
    
    
    @IBAction func moveQuestions(_ sender: UIButton) {
        // moveQuestion function is linked to next and previous to move between questions
        let pressed = sender.titleLabel?.text
        if (pressed == "Previous") {
            current -= 1
            if (current == -1) {
                current = 5
            }
        }
        if (pressed == "Next") {
            current += 1
            if (current == 6) {
                current = 0
            }
        }
        question.text = questionsArray[current]  // update to next or prev question
        currentImage = UIImage(named: picArray[current]) // update current to new UIImage
        imageView.image = currentImage // set UIImageView to UIImage
        answer.text = "..."
    }
}

