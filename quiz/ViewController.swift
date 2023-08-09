//
//  ViewController.swift
//  quiz
//
//  Created by Cambrian on 2023-08-09.
//

import UIKit

class ViewController: UIViewController {
    
    var screenWidth: CGFloat!
    var questionNumber = 0
    
    @IBOutlet weak var nextQuestion: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var question1Constraint: NSLayoutConstraint!
    @IBOutlet weak var question2Constraint: NSLayoutConstraint!
    
    
    @IBAction func nextQuestion(_ sender: Any) {
        UIView.animate(withDuration: 3, delay: 0, animations: {
            self.answer.alpha = 0
            ç
            self.question1Constraint.constant = self.screenWidth
            self.question2Constraint.constant = 0
            self.view.layoutIfNeeded()
        }) { completion in
            print("this animation has complete")
//            questionNumber += 1
            self.answer.text = "answer "
        }
    }
    
    @IBAction func showAnswer(_ sender: Any) {
//        answer.alpha = 1
        UIView.animate(withDuration: 1) {
            self.answer.alpha = 1
        }
        
//        UIView.animate(withDuration: 2, delay: 0) {
//            self.answer.alpha = 1
//        } completion: { completed in
//            UIView.animate(withDuration: 2) {
//                self.answer.alpha = 0
//            }
//        }
        
//        UIView.animateKeyframes(withDuration: 1, delay: 0, options: []) {
//            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25) {
//                self.answer.alpha = 1
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.1) {
//                var x = self.answer.frame.origin.x
//                var y = self.answer.frame.origin.y
//
//                self.answer.frame.origin = CGPoint(x: x+20, y: y)
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.35, relativeDuration: 0.1) {
//                var x = self.answer.frame.origin.x
//                var y = self.answer.frame.origin.y
//
//                self.answer.frame.origin = CGPoint(x: x-40, y: y)
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.45, relativeDuration: 0.1) {
//                var x = self.answer.frame.origin.x
//                var y = self.answer.frame.origin.y
//
//                self.answer.frame.origin = CGPoint(x: x+40, y: y)
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.55, relativeDuration: 0.1) {
//                var x = self.answer.frame.origin.x
//                var y = self.answer.frame.origin.y
//
//                self.answer.frame.origin = CGPoint(x: x-40, y: y)
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.65, relativeDuration: 0.1) {
//                var x = self.answer.frame.origin.x
//                var y = self.answer.frame.origin.y
//
//                self.answer.frame.origin = CGPoint(x: x+20, y: y)
//            }
//
//            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
//                self.answer.alpha = 0
//            }
//        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        screenWidth = view.frame.width
        
        answer.alpha = 0
        question2Constraint.constant = -screenWidth
        
        question.text = "Question \(questionNumber)"
        answer.text = "Answer \(questionNumber)"
    }


    
}

