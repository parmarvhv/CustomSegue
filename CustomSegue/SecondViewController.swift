//
//  SecondViewController.swift
//  CustomSegue
//
//  Created by Vaibhav Parmar on 30/10/17.
//  Copyright © 2017 Vaibhav Parmar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var colorString = NSString()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    fileprivate func setupView() {
        guard colorString == "orange" else { return }
        self.view.backgroundColor = .orange
    }
}
