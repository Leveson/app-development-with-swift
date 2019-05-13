//
//  ViewController.swift
//  Apple Pie
//
//  Created by Tshaka Lekholoane on 10/05/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["pirate", "fast", "magnificent", "angry", "insect", "list"]
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newRound()
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
}

