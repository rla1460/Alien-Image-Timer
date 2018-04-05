//
//  ViewController.swift
//  Alien Image Timer
//
//  Created by D7703_07 on 2018. 4. 5..
//  Copyright © 2018년 D7703_07. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var myTimer = Timer()
    var direction = 1
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func PlayBtn(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    @IBAction func StopBtn(_ sender: Any) {
        myTimer.invalidate()
    }
    @objc func doAnimation(){
        //  if counter == 5 {
        //      counter = 1
        // } else {
        //      counter = counter + 1
        
        //  }
        
        
        if counter == 5{
            direction = 0
        }
        else if counter == 1{
            direction = 1
        }
        if direction == 1{
            counter += 1
        }
        else if direction == 0{
            counter = counter - 1
        }
        
        ImageView.image = UIImage(named: "frame\(counter).png")
        lbl.text = String(counter)
    }
    
    

    
}

