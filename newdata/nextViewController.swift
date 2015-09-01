//
//  nextViewController.swift
//  newdata
//
//  Created by Jordan Williams on 5/3/15.
//  Copyright (c) 2015 Jordan Williams. All rights reserved.
//

import UIKit

class nextViewController: UIViewController {

    
    
    
        //queue first in first out 8396 pop 8
        
    
    @IBOutlet weak var hi: UILabel!

    
   
    
    // array
    var myArray:[Int] = []
    
    
    //answer
    @IBOutlet weak var answer: UITextField!
    
   // user command input
    @IBOutlet weak var input: UITextField!
    
    // int value entered
    @IBOutlet weak var value: UITextField!

    var count = 0
    
    @IBAction func Button(sender: AnyObject)
    {
    
        
        
        var numInput = Int(value.text!)

        
        if(input.text == "Push")
        {
            myArray.append(numInput!)
            //answer.text = toString(myArray[0])
            count+=1
            print(count)
            
            if(answer.text != nil)
            {
                answer.text = nil
            }

        
        }
        
        if(input.text == "Pop")// && value.text == nil && answer.text == nil)
        {
            
            if(count == 0)
            {
                answer.text = "Queue Empty"
            }
            else
            {
                answer.text = String(myArray[0])
                myArray.removeAtIndex(0)
                count-=1
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
