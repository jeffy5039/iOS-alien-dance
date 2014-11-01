//
//  ViewController.swift
//  Images
//
//  Created by jordan on 01/11/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alien: UIImageView!
    var counter = 1
    var timer = NSTimer()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.085, target: self, selector: "dance", userInfo: nil, repeats: true)
    }

    @IBAction func buttone() {
        timer.invalidate()
    }
    
    func dance() {
        counter++
        if counter == 6 {
            counter = 1
        }
        var imageName = "frame\(counter).png"
        alien.image = UIImage(named: imageName)
    }
}

