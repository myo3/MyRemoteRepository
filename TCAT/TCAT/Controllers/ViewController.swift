//
//  ViewController.swift
//  TCAT
//
//  Created by Monica Ong on 4/22/17.
//  Copyright © 2017 Monica Ong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var routes: [Route] = []
    var tableView: UITableView!
    let reuseIdentifier: String = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Routes"
        tableView = UITableView(frame: view.frame)
        tableView.delegate = self
        tableView.dataSource = self
        
        let route1 = Route(departureTime: "3:45 PM", arrivalTime: "3:52", stops: ["Baker Flagpole", "Commons - Seneca Street"], busNums: [90])
        let route2 = Route(departureTime: "12:12 PM", arrivalTime: "12:47", stops: ["Annabel Taylor Hall", "Commons - Seneca Street"], busNums: [90])
        let route3 = Route(departureTime: "1:12 PM", arrivalTime: "1:38 PM", stops: ["Baker Flagpole", "Schwartz Center", "Commons - Seneca Street"], busNums: [90, 32])
        
        routes = [route1, route2, route3]
        
        view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return routes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: reuseIdentifier)
        cell.textLabel?.text = "\(routes[indexPath.row].departureTime) - \(routes[indexPath.row].arrivalTime)"
        cell.textLabel?.sizeToFit()
        cell.detailTextLabel?.text = "Takes busses: \(routes[indexPath.row].busNums)"
        
        return cell
    }

    
}

