//
//  SecondViewController.swift
//  Simon Says
//
//  Created by Brandon Escobar on 4/6/20.
//  Copyright © 2020 Brandon Escobar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var tapRed: UIView!
    @IBOutlet weak var tapYellow: UIView!
    @IBOutlet weak var tapGreen: UIView!
    @IBOutlet weak var tapBlue: UIView!
    var guess = String()
    var answers = [String]()
    var highscore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        randomizePattern()
        randomizePattern()
        randomizePattern()
    }
    
    func randomizePattern() {
        // Choose color for the new round
        var nextColor = ""
        let choose = Int.random(in: 0 ..< 4)
        if choose == 0 {
            nextColor += "Red"
        } else if choose == 1 {
            nextColor += "Yellow"
        } else if choose == 2 {
            nextColor += "Green"
        } else {
            nextColor += "Blue"
        }
        
        answers += [nextColor]
    }
    
    func tellPattern() {
        // Show the pattern to the player
    }
    
    func gameOver() {
        //
    }
    
}

