//
//  ViewController.swift
//  Simon Says
//
//  Created by Brandon Escobar on 4/6/20.
//  Copyright © 2020 Brandon Escobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftRed: UIView!
    @IBOutlet weak var leftYellow: UIView!
    @IBOutlet weak var leftGreen: UIView!
    @IBOutlet weak var leftBlue: UIView!
    @IBOutlet weak var rightRed: UIView!
    @IBOutlet weak var rightYellow: UIView!
    @IBOutlet weak var rightGreen: UIView!
    @IBOutlet weak var rightBlue: UIView!
    var timer = Timer()
    /*
     tapRed.backgroundColor = UIColor.init(red: 128 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
     tapYellow.backgroundColor = UIColor.init(red: 128 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
     tapGreen.backgroundColor = UIColor.init(red: 0 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
     tapBlue.backgroundColor = UIColor.init(red: 0 / 255, green: 0 / 255, blue: 128 / 255, alpha: 1)
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (_) in
            self.leftRed.backgroundColor = .red
            self.rightRed.backgroundColor = UIColor.init(red: 128 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
            self.leftYellow.backgroundColor = UIColor.init(red: 128 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
            self.rightYellow.backgroundColor = .yellow
            self.leftGreen.backgroundColor = .green
            self.rightGreen.backgroundColor = UIColor.init(red: 0 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
            self.leftBlue.backgroundColor = UIColor.init(red: 0 / 255, green: 0 / 255, blue: 128 / 255, alpha: 1)
            self.rightBlue.backgroundColor = .blue
            self.timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false, block: { (_) in
                self.leftRed.backgroundColor = UIColor.init(red: 128 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
                self.rightRed.backgroundColor = .red
                self.leftYellow.backgroundColor = .yellow
                self.rightYellow.backgroundColor = UIColor.init(red: 128 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
                self.leftGreen.backgroundColor = UIColor.init(red: 0 / 255, green: 128 / 255, blue: 0 / 255, alpha: 1)
                self.rightGreen.backgroundColor = .green
                self.leftBlue.backgroundColor = .blue
                self.rightBlue.backgroundColor = UIColor.init(red: 0 / 255, green: 0 / 255, blue: 128 / 255, alpha: 1)
            })
        })
    }

    @IBAction func Start(_ sender: Any) {
        performSegue(withIdentifier: "Start", sender: self)
    }
    
}

