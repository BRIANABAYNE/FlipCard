//
//  FlipCardViewController.swift
//  Flipcard
//
//  Created by Briana Bayne on 11/16/23.
//

import UIKit

class FlipCardViewController: UIViewController {
    
    
    // MARK: - Properties
    var flipcount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipcount)"
        }
    }
    
    var emojiChoices = ["🍒", "🍆", "🫦", "💅","👩‍❤️‍💋‍👩"]
    
    // MARK: - Outlet
    @IBOutlet weak var flipCountLabel: UILabel!
    
    // MARK: - Collection
    
    @IBOutlet var cardButtons: [UIButton]!
    
    // MARK: - Actions
    @IBAction func lipsFlipCard(_ sender: UIButton) {
        flipcount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(emoji: emojiChoices, button: sender)
        }
    }
    
    // MARK: - Functions
    func flipCard(emoji: String, button: UIButton ) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = .magenta
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = .white }
    }
}
