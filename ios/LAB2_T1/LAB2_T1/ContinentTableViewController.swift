//
//  ContinentTableViewController.swift
//  LAB2_T1
//
//  Created by Juho Parkkinen on 10/09/2019.
//  Copyright © 2019 Juho Parkkinen. All rights reserved.
//

import UIKit

class ContinentTableViewController: UITableViewController {
    
    let continents = [("Africa", Int64(1216130000)),
                     ("Australia", Int64(38304000)),
                     ("Antarctica", Int64(0)),
                     ("North America", Int64(579024000)),
                     ("South America", Int64(422535000)),
                     ("Asia", Int64(4581757408)),
                     ("Europe", Int64(738849000))]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexpath: IndexPath) {
        let alert = UIAlertController(title: "\(continents[indexpath.row].0)", message: "Population of \(continents[indexpath.row].0) is \(continents[indexpath.row].1)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default,handler: nil))
        self.present(alert,animated: true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return continents.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = self.continents[indexPath.row].0
        return cell
    }
}
