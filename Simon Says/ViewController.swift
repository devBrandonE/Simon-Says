//
//  ViewController.swift
//  Simon Says
//
//  Created by Brandon Escobar on 4/6/20.
//  Copyright © 2020 Brandon Escobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Start(_ sender: Any) {
        performSegue(withIdentifier: "firstToSecond", sender: self)
    }
    
}

