//
//  CustomSegue.swift
//  CustomSegue
//
//  Created by Vaibhav Parmar on 31/10/17.
//  Copyright © 2017 Vaibhav Parmar. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    override func perform() {
        let sourceView = self.source.view!
        let destinationView = self.destination.view!
        
        let window = UIApplication.shared.delegate?.window!
        
        destinationView.center = CGPoint(x: sourceView.center.x, y: sourceView.center.y - destinationView.center.y)
        window?.insertSubview(destinationView, aboveSubview: sourceView)
        
        UIView.animate(withDuration: 0.4,
                       animations: { 
                        destinationView.center = CGPoint(x: sourceView.center.x, y: sourceView.center.y)
                        sourceView.center = CGPoint(x: sourceView.center.x, y: 0 + 2 * destinationView.center.y)
        }) { (value) in
            self.source.navigationController?.pushViewController(self.destination, animated: false)
        }
    }
}
