//
//  SecondViewController.swift
//  BackPassDataFromBToA
//
//  Created by Mohamed on 8/30/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

protocol ShowData {
    
 func passData(data:String)
    
}

class SecondViewController: UIViewController {

    @IBOutlet weak var scondtextFL: UITextField!
   
    var myDelegate:ShowData?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
 
    }
    
    @IBAction func btn_pass(_ sender: UIButton) {
    
        
        dismiss(animated: true) {
            
            guard let delegate = self.myDelegate else{
                
                return
            }
            
            delegate.passData(data: self.scondtextFL.text!)
        }
    
    }
    
}
