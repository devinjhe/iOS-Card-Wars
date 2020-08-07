//
//  ViewController.swift
//  App1
//
//  Created by Devin He on 06/04/2020.
//  Copyright © 2020 Devin He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var computerScoreLabel: UILabel!
    
    var playerScore = 0
    var computerScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftCardNumber = Int.random(in: 2...14)
        let rightCardNumber = Int.random(in: 2...14)
        
        leftCard.image = UIImage(named: "card\(leftCardNumber)")
        rightCard.image = UIImage(named: "card\(rightCardNumber)")
        
        if (leftCardNumber > rightCardNumber)
        {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        else if (leftCardNumber < rightCardNumber)
        {
            computerScore += 1
            computerScoreLabel.text = String(computerScore)
        }
    }
    
}

