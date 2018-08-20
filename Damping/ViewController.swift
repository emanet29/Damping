//
//  ViewController.swift
//  Damping
//
//  Created by Snoopy on 20/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bouton: UIButton!
    
    @IBOutlet weak var titreView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 2, delay: 2, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.9, options: .curveLinear, animations: {
            self.titreView.center.y = 60
            
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 4, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.4, options: .curveLinear, animations: {
            self.bouton.center.y = self.view.frame.height - 100
        }, completion: nil)
    }
    
}

