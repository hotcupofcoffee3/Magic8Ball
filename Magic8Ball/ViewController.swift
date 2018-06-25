//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Adam Moore on 3/15/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magic8BallImage: UIImageView!
    
    let ballAnswerOptionsArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), UIImage(named: "ball5")]
    
    func newBallImage() {
        let randomIndex = Int(arc4random_uniform(UInt32(ballAnswerOptionsArray.count)))
        magic8BallImage.image = ballAnswerOptionsArray[randomIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

