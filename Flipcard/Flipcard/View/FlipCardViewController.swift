//
//  FlipCardViewController.swift
//  Flipcard
//
//  Created by Briana Bayne on 11/16/23.
//

import UIKit

class FlipCardViewController: UIViewController {

    
    // MARK: - Actions
    @IBAction func lipsFlipCard(_ sender: UIButton) {
        flipCard(emoji: "🫦", button: sender)
    }
    
    
    @IBAction func flipSecondCard(_ sender: UIButton) {
        flipCard(emoji: "💅", button: sender)
    }

    @IBAction func flipThirdCard(_ sender: UIButton) {
        flipCard(emoji: "🍒", button: sender)
    }
    
    @IBAction func flipFourthCard(_ sender: UIButton) {
        flipCard(emoji: "🍆", button: sender)
    }
    
    @IBAction func flipFithCard(_ sender: UIButton) {
        flipCard(emoji: "👩‍❤️‍💋‍👩", button: sender)
    }
    
    @IBAction func flipSixCard(_ sender: UIButton) {
        flipCard(emoji: "💦", button: sender)
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
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


