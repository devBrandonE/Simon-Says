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
    var timer = Timer()
    var second = 0
    var answers = [String]()
    var highscore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        randomizePattern()
        randomizePattern()
        randomizePattern()
        tellPattern()
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
        for i in answers {
            if second == 0 {
                timer = Timer.scheduledTimer(withTimeInterval: 0, repeats: false, block: { (_) in
                    print(i)
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
                    print(i)
                    self.tapRed.backgroundColor = UIColor.init(red: 128 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
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
                })
            }
            second += 1
        }
    }
    
    func gameOver() {
        //
    }
    
}

