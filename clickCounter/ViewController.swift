//
//  ViewController.swift
//  clickCounter
//
//  Created by Colin Walsh on 1/5/18.
//  Copyright © 2018 Colin Walsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "\(self.count)"
        self.view.addSubview(label)
        
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label?.text = "\(self.count)"
    }
}

