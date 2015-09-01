//
//  stackViewController.swift
//  newdata
//
//  Created by Jordan Williams on 5/6/15.
//  Copyright (c) 2015 Jordan Williams. All rights reserved.
//

import UIKit

class stackViewController: UIViewController {

   
    // Stack swift implementation
    
    
    
    // var for user to enter command
    
    @IBOutlet weak var userInput: UITextField!
    
    
    // enter the returned value here
    @IBOutlet weak var answer: UITextField!
    
    
    // variable for value entered
    @IBOutlet weak var intValue: UITextField!
    
    // this is my empty array
    var emptyArr:[Int] = []
    
    
    ///// Program start ////////
    
    // user presses run
    
    var countPush = 0
    @IBAction func runProgramm(sender: AnyObject) {
    
        var numInput = Int(intValue.text!)
        
        var command = userInput.text
        
        if( command == "Push" && numInput == nil)
        {
            answer.text = "need to enter a number value"
            
        }
        else
        {
            
            
            
            // Push in values
            if(command == "Push")
            {
                // adding num into array
                emptyArr.append(numInput!)
                
                print(emptyArr[countPush])
                
                countPush+=1
                
            }
            if(answer.text != nil)
            {
                answer.text = nil
            }
        
        
        }
        
        
        
        
        
        // Pop out / take away values
        if(command == "Pop" && numInput == nil)
        {
            if(countPush == 0)
            {
                answer.text = "Stack Empty"
            }
            else
            {
                
                
                var value = String(emptyArr[countPush-1])
                answer.text = value
                
                
                
                emptyArr.removeAtIndex(countPush-1)
                countPush-=1
            }
        }

    
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
