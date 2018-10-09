//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jonathan Ferreras on 10/5/18.
//  Copyright © 2018 Jonathan Ferreras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let magic8BallResponsesArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var magic8BallResponsesIndex: Int = 0

    @IBOutlet weak var magic8BallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMagic8BallResponse()
    }


    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateMagic8BallResponse()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagic8BallResponse()
    }
    
    func updateMagic8BallResponse(){
        magic8BallResponsesIndex = Int.random(in: 0 ... 4)
        
        magic8BallImageView.image = UIImage (named: magic8BallResponsesArray[magic8BallResponsesIndex])
    }
    
    
}

