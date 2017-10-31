//
//  UnwindCustomSegue.swift
//  CustomSegue
//
//  Created by Vaibhav Parmar on 31/10/17.
//  Copyright © 2017 Vaibhav Parmar. All rights reserved.
//

import UIKit

class UnwindCustomSegue: UIStoryboardSegue {
    override func perform() {
        let sourceView = self.source.view!
        let destinationView = self.destination.view!
        let window = UIApplication.shared.delegate?.window!
        
        window?.insertSubview(destinationView, belowSubview: sourceView)
        
        destinationView.center = CGPoint(x: sourceView.center.x, y: sourceView.center.y + destinationView.center.y)
        UIView.animate(withDuration: 0.4,
                       animations: { 
                        destinationView.center = CGPoint(x: sourceView.center.x, y: sourceView.center.y)
                        sourceView.center = CGPoint(x: sourceView.center.x, y: destinationView.center.y)
        }) { (value) in
            destinationView.removeFromSuperview()
            if let navController = self.destination.navigationController {
                navController.popToViewController(self.destination, animated: false)
            }
        }
        
    }
}
