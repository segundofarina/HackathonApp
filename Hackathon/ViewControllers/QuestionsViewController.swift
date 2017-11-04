//
//  QuestionsViewController.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    var lessons: String?
    var db: DataBase?
    var q: Question?
    
    var points: Int = 0
    
    @IBOutlet weak var question: UIButton!
    @IBOutlet weak var ans1: UIButton!
    @IBOutlet weak var ans2: UIButton!
    @IBOutlet weak var ans3: UIButton!
    @IBOutlet weak var ans4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var backFromResult = false
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if backFromResult {
            dismiss(animated: false, completion: nil)
        }
        
        
        
        db = DataBase()
        
        if lessons == "Conceptos Financieros" {
            q = db?.nextCategory1()
        } else {
           q = db?.nextCategory2()
        }
        //Manejar nulls
        question.setTitle(q!.q, for: .normal)
        ans1.setTitle(q!.ans1, for: .normal)
        ans2.setTitle(q!.ans2, for: .normal)
        ans3.setTitle(q!.ans3, for: .normal)
        ans4.setTitle(q!.ans4, for: .normal)
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        
        if sender.titleLabel?.text == q?.correct {
            //Mostrar verde
            sender.setBackgroundImage(UIImage(named:"answerCorrect")!, for: .normal)
            points += 10
        } else {
            //Mostrar rojo
            sender.setBackgroundImage(UIImage(named:"answerWrong")!, for: .normal)
        }
        
        //updateUI
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
            self.updateUI()
        })
        
        
    }
    
    func updateUI() {
        if lessons == "Lesson1" {
            q = db?.nextCategory1()
        } else {
            q = db?.nextCategory2()
        }
        //Manejar nulls
        if q == nil {
            //segue
            
            let storyboard = UIStoryboard (name: "Main", bundle: nil)
            let resultVC = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultsViewController
            
            resultVC.points = points
            
            resultVC.setUp {
                
                self.dismiss(animated: false)
            }
            self.present(resultVC, animated: true, completion: nil)
 
            return
        }
        
        ans1.setBackgroundImage(UIImage(named:"answerRectangle")!, for: .normal)
        ans2.setBackgroundImage(UIImage(named:"answerRectangle")!, for: .normal)
        ans3.setBackgroundImage(UIImage(named:"answerRectangle")!, for: .normal)
        ans4.setBackgroundImage(UIImage(named:"answerRectangle")!, for: .normal)
        
        
        question.setTitle(q!.q, for: .normal)
        ans1.setTitle(q!.ans1, for: .normal)
        ans2.setTitle(q!.ans2, for: .normal)
        ans3.setTitle(q!.ans3, for: .normal)
        ans4.setTitle(q!.ans4, for: .normal)
    }
    
    
    func backResult()  {
        backFromResult = true
    }
    
}
