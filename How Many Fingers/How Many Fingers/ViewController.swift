//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Mac on 2017-01-06.
//  Copyright © 2017 Dees. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var response: UILabel!
    @IBOutlet weak var textBox: UITextField!
    
    
    @IBAction func button(_ sender: Any) {
        func clear(){
            textBox.text = ""
        }
        
        var random = arc4random_uniform(5)
        var convert = Int(random)
        var guess = Int(textBox.text!)
        
        if guess != nil{
        if convert == guess {
            
            response.text = "You're right!"
            clear()
        }else{ convert != guess
            response.text = "Wrong! Please try again!"
            clear()
            }
        
        }else{
            response.text = "Please enter a number"
            clear()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

