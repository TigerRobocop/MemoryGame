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
    
    @IBOutlet weak var playCounter: UILabel!
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBAction func toggleCard(_ sender: UIButton) {
        
        for index in buttonCollection.indices {
//            if sender.backgroundColor == UIColor.red {
//
//            } else {
//
//            }
            if sender == buttonCollection[index] {
                sender.setTitle(cards[index], for: .normal)
                sender.backgroundColor = UIColor.blue
            } else {
//                sender.setTitle("", for: .normal)
//                sender.backgroundColor = UIColor.red
            }
        }
        
        playCount += 1
        self.playCounter.text = "\(playCount)"
    }
}

