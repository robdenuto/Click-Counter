//
//  ViewController.swift
//  Click Counter
//
//  Created by Robert DeNuto on 1/5/17.
//  Copyright © 2017 Robert DeNuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label code
        let label = UILabel()
        label.frame = CGRect(x:150,y:150,width:60,height:60)
        label.text = "0"

        self.view.addSubview(label)
        self.label = label
        
        //button code
        let button = UIButton()
        button.frame = CGRect(x:150,y:250,width:60,height:60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
    }
    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

