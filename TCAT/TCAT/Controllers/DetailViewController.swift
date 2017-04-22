//
//  DetailViewController.swift
//  TCAT
//
//  Created by Monica Ong on 4/22/17.
//  Copyright © 2017 Monica Ong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
        //Data
        var route: Route?
        var routeNum: Int?
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            title = "Route \(routeNum)"
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
}
