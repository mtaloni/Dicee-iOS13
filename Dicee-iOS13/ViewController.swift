//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet allows me to access a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var totalRolled: UILabel!
    
    let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    var leftDiceRoll = 0
    var rightDiceRoll = 0
    var combinedRoll = 0
    var combinedRollStr = "zero"
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
    
        randomiseDice()
    }
    
    func randomiseDice() {
        leftDiceRoll = Int.random(in: 0...5)
        rightDiceRoll = Int.random(in: 0...5)
        combinedRoll = leftDiceRoll + rightDiceRoll + 2
        combinedRollStr = String(combinedRoll)
        
        //diceImageView1.image = diceArray.randomElement()
        diceImageView1.image = diceArray[leftDiceRoll]
        diceImageView2.image = diceArray[rightDiceRoll]
        totalRolled.text = combinedRollStr
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomiseDice()
    }
    
}

