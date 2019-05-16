//
//  ViewController.swift
//  Dicee
//
//  Created by Serhii KAREV on 5/12/19.
//  Copyright © 2019 Serhii KAREV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let arrayOfImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateImage()
    }
    
    func updateImage(){
        diceImageView1.image = UIImage(named: arrayOfImages[Int(arc4random_uniform(6))])
        diceImageView2.image = UIImage(named: arrayOfImages[Int(arc4random_uniform(6))])
    }
}

