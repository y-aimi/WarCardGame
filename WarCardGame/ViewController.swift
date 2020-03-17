//
//  ViewController.swift
//  WarCardGame
//
//  Created by 相見佳輝 on 2020/02/23.
//  Copyright © 2020 相見佳輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        //Randomize some number
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //Update image View
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
       
        
        
         //Compare the random Numbers
        if leftScoreLabel.text == String("WIN!!"){
            leftScoreLabel.text = String(leftScore)
            rightScoreLabel.text = String(rightScore)
        }else if rightScoreLabel.text == String("WIN!!"){
            leftScoreLabel.text = String(leftScore)
            rightScoreLabel.text = String(rightScore)
        }
        
        if leftNumber > rightNumber{
            //leftside wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
            //rightside wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else{
            //tie
        }
        
        if leftScore == 7{
            leftScoreLabel.text = String("WIN!!")
            leftScore = 0
            rightScore = 0
        }else if rightScore == 7{
            rightScoreLabel.text = String("WIN!!")
            leftScore = 0
            rightScore = 0
        }
    }
    
}

