//
//  ViewController.swift
//  BackPassDataFromBToA
//
//  Created by Mohamed on 8/30/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , ShowData {
    
    

    @IBOutlet weak var labelFirst: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    
        
    }

    @IBAction func btn_go(_ sender: UIButton) {
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            
            vc.myDelegate = self
            
            
            present(vc , animated: true  , completion: nil)
            
        }
        
    }
    func passData(data: String) {
        
        
        labelFirst.text = data
    }
}

