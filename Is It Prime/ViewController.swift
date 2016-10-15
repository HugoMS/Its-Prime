//
//  ViewController.swift
//  Is It Prime
//
//  Created by Hugo Morelli on 9/26/16.
//  Copyright © 2016 Hugo Morelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    //MARK: Actions
    @IBAction func isPrime(_ sender: AnyObject) {
        
        if let userEnteredString = numberTextField.text {
        let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger{
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                    
                    messageLabel.text = "\(number) is prime!"
                    
                } else {
                    
                    messageLabel.text = "\(number) is not prime"
                    
                }
                
            }
            else{
                messageLabel.text = "Please enter a positive whole number "
            }
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

