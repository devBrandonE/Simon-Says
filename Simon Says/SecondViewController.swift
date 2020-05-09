//
//  SecondViewController.swift
//  Simon Says
//
//  Created by Brandon Escobar on 4/6/20.
//  Copyright © 2020 Brandon Escobar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var tapRed: ViewGrid!
    @IBOutlet weak var tapYellow: ViewGrid!
    @IBOutlet weak var tapGreen: ViewGrid!
    @IBOutlet weak var tapBlue: ViewGrid!
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var results: UILabel!
    @IBOutlet weak var tryAgain: UIButton!
    //var colorsArray = [ViewGrid]()
    var yourTurn = false
    var gameEnd = false
    var timer = Timer()
    var second = 0
    var answers = [String]()
    var placement = 0
    var guess = true
    var highscore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
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
        tellPattern()
    }
    
    func tellPattern() {
        var count = 1
        for i in answers {
            yourTurn = false
            if second == 0 {
                timer = Timer.scheduledTimer(withTimeInterval: 0, repeats: false, block: { (_) in
                    print("SPACE ----- SPACE")
                })
                second += 1
            }
            if i == "Red"{
                timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(second), repeats: false, block: { (_) in
                    print(i)
                    self.tapRed.backgroundColor = .red
                })
                print("1")
                second += 1
                timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(second), repeats: false, block: { (_) in
                    self.tapRed.backgroundColor = UIColor.init(red: 128 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
                    if count == self.answers.count {
                        self.yourTurn = true
                        self.second = 0
                    }
                    count += 1
                })
            } else if i == "Yellow"{
                timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(second), repeats: false, block: { (_) in
                    print(i)
                    self.tapYellow.backgroundColor = .yellow
                })
                print("2")
                second += 1
                timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(second), repeats: false, block: { (_) in
                    self.tapYellow.backgroundColor = UIColor.init(red: 128 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
                    if count == self.answers.count {
                        self.yourTurn = true
                        self.second = 0
                    }
                    count += 1
                })
            } else if i == "Green"{
                timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(second), repeats: false, block: { (_) in
                    print(i)
                    self.tapGreen.backgroundColor = .green
                })
                print("3")
                second += 1
                timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(second), repeats: false, block: { (_) in
                    self.tapGreen.backgroundColor = UIColor.init(red: 0 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
                    if count == self.answers.count {
                        self.yourTurn = true
                        self.second = 0
                    }
                    count += 1
                })
            } else if i == "Blue"{
                timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(second), repeats: false, block: { (_) in
                    print(i)
                    self.tapBlue.backgroundColor = .blue
                })
                print("4")
                second += 1
                timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(second), repeats: false, block: { (_) in
                    self.tapBlue.backgroundColor = UIColor.init(red: 0 / 255, green: 0 / 255, blue: 128 / 255, alpha: 1)
                    if count == self.answers.count {
                        self.yourTurn = true
                        self.second = 0
                    }
                    count += 1
                })
            }
            second += 1
        }
    }
    
    @IBAction func tapOnRed(sender: UITapGestureRecognizer) {
        if yourTurn {
            yourTurn = false
            print("Red")
            tapRed.backgroundColor = .red
            if "Red" == answers[placement] {
                print("Correct")
                guess = true
            }
            else {
                print("Incorrect")
                guess = false
            }
            placement += 1
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(checkAnswer), userInfo: nil, repeats: false)
        }
    }
    
    @IBAction func tapOnYellow(sender: UITapGestureRecognizer) {
        if yourTurn {
            yourTurn = false
            print("Yellow")
            tapYellow.backgroundColor = .yellow
            if "Yellow" == answers[placement] {
                print("Correct")
                guess = true
            }
            else {
                print("Incorrect")
                guess = false
            }
            placement += 1
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(checkAnswer), userInfo: nil, repeats: false)
        }
    }
    
    @IBAction func tapOnGreen(sender: UITapGestureRecognizer) {
        if yourTurn {
            yourTurn = false
            print("Green")
            tapGreen.backgroundColor = .green
            if "Green" == answers[placement] {
                print("Correct")
                guess = true
            }
            else {
                print("Incorrect")
                guess = false
            }
            placement += 1
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(checkAnswer), userInfo: nil, repeats: false)
        }
    }
    
    @IBAction func tapOnBlue(sender: UITapGestureRecognizer) {
        if yourTurn {
            yourTurn = false
            print("Blue")
            tapBlue.backgroundColor = .blue
            if "Blue" == answers[placement] {
                print("Correct")
                guess = true
            }
            else {
                print("Incorrect")
                guess = false
            }
            placement += 1
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(checkAnswer), userInfo: nil, repeats: false)
        }
    }
    
    @objc func checkAnswer() {
        if guess {
            tapRed.backgroundColor = UIColor.init(red: 128 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
            tapYellow.backgroundColor = UIColor.init(red: 128 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
            tapGreen.backgroundColor = UIColor.init(red: 0 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
            tapBlue.backgroundColor = UIColor.init(red: 0 / 255, green: 0 / 255, blue: 128 / 255, alpha: 1)
            yourTurn = true
            if placement >= answers.count {
                placement = 0
                highscore += 1
                randomizePattern()
            }
        }
        else {
            print("Bruh")
            gameEnd = true
            gameOver()
        }
    }
    
    func gameOver() {
        tapRed.backgroundColor = .black
        tapYellow.backgroundColor = .black
        tapGreen.backgroundColor = .black
        tapBlue.backgroundColor = .black
        gameOverLabel.textColor = .black
        results.textColor = .black
        results.text = "Highscore: \(highscore)"
        tryAgain.backgroundColor = UIColor.black
    }
    
    @IBAction func reset(_ sender: Any) {
        if gameEnd {
            gameEnd = false
            placement = 0
            tapRed.backgroundColor = UIColor.init(red: 128 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
            tapYellow.backgroundColor = UIColor.init(red: 128 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
            tapGreen.backgroundColor = UIColor.init(red: 0 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
            tapBlue.backgroundColor = UIColor.init(red: 0 / 255, green: 0 / 255, blue: 128 / 255, alpha: 1)
            answers = []
            gameOverLabel.textColor = .white
            results.textColor = .white
            tryAgain.backgroundColor = UIColor.white
            randomizePattern()
        }
    }
    
}

