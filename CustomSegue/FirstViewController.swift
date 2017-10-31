//
//  FirstViewController.swift
//  CustomSegue
//
//  Created by Vaibhav Parmar on 30/10/17.
//  Copyright © 2017 Vaibhav Parmar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FirstViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "CustomSegue" else { return }
        let secondVC = segue.destination as! SecondViewController
        secondVC.colorString = "orange"
    }
    
    @IBAction func unwindToSenderView(_ sender: UIStoryboardSegue) {
        self.view.backgroundColor = .cyan
    }

}

