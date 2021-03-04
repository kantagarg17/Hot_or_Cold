//
//  ViewController.swift
//  Hot or Cold
//
//  Created by Rajeev Garg on 04/06/20.
//  Copyright © 2020 Rajeev Garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var guess: UITextField!
    
    var no = Int(arc4random_uniform(100))
    var score = Int(0)
    
    @IBAction func press(_ sender: UIButton) {
        
        if(Int(guess.text!)! < no){
            label.text = "You're too cold!"
            score+=1
            guess.text = ""
        }
        else if(Int(guess.text!)! > no){
            label.text = "You're too hot!"
            score+=1
            guess.text = ""
        }
        else {
            label.text = "Bingo!" + "score is" + String(100-score)
        }
    }
    
    @IBAction func reset(_ sender: UIButton) {
     
        no = Int((arc4random_uniform(100)))
        label.text = "Try again!"
        score = 0
        guess.text = ""
    }
}

