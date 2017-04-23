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
        var route: Route!
        var routeNum: Int!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            title = "Route \(routeNum!)"
            
            view.backgroundColor = .white
            
            let timeLabel = UILabel(frame: CGRect(x: 10, y: (navigationController?.navigationBar.frame.maxY)! + 10, width: 100, height: 50))
            timeLabel.text = "Time: \(route.departureTime) - \(route.arrivalTime)"
            timeLabel.sizeToFit()
            view.addSubview(timeLabel)
            
            let busLabel = UILabel(frame: CGRect(x: timeLabel.frame.minX, y: timeLabel.frame.maxY + 8, width: 100, height: 50))
            busLabel.text = "Bus(es): \(route.busNums)"
            busLabel.sizeToFit()
            view.addSubview(busLabel)
            
            let stopLabel = UILabel(frame: CGRect(x: timeLabel.frame.minX, y: busLabel.frame.maxY + 10, width: 100, height: 50))
            stopLabel.text = "Stops:"
            stopLabel.sizeToFit()
            view.addSubview(stopLabel)
            
            var maxY = stopLabel.frame.maxY
            for stop in (route?.stops)!{
                let stopLabel = UILabel(frame: CGRect(x: stopLabel.frame.minX + (stopLabel.frame.width/2), y: maxY + 10, width: 100, height: 50))
                stopLabel.text = stop
                stopLabel.sizeToFit()
                maxY = stopLabel.frame.maxY
                view.addSubview(stopLabel)
            }
        }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
}
