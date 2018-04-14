//
//  ViewController.swift
//  Memory Game
//
//  Created by Aluno on 13/04/18.
//  Copyright © 2018 liv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cards = ["🐷", "🐷", "🐯", "🐯"]
    var playCount = 0
    var cardsUp = 0
    var isUp = [false, false, false, false]
    
    func clearCards() {
        for index in buttonCollection.indices {
            buttonCollection[index].setTitle("", for: .normal)
            buttonCollection[index].backgroundColor = UIColor.red
            isUp[index] = false
        }
        
        cardsUp = 0
    }
    
    func startNewGame() {
        clearCards()
        playCount = 0
        btnNewGame.isHidden = true
        self.playCounter.text = "\(playCount)"
    }
    @IBOutlet weak var playCounter: UILabel!
    @IBOutlet weak var btnNewGame: UIButton!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBAction func newGame_click(_ sender: Any) {
        startNewGame()
    }
    
    @IBAction func toggleCard(_ sender: UIButton) {
        
        if cardsUp == 2 {
            clearCards()
        }
        
        for index in buttonCollection.indices {

            if sender == buttonCollection[index]{
                if sender.currentTitle != cards[index]  {
                    
                    sender.setTitle(cards[index], for: .normal)
                    sender.backgroundColor = UIColor.blue
                    
                    if !isUp[index] {
                        isUp[index] = true
                        cardsUp += 1
                    }
                    
                } else {
                    sender.setTitle("", for: .normal)
                    sender.backgroundColor = UIColor.red
                    isUp[index] = false
                    
                    cardsUp -= 1
                }
            }
            
        }
        btnNewGame.isHidden = false
        playCount += 1
        self.playCounter.text = "\(playCount)"
    }
}

