//
//  TodoTableViewController.swift
//  LAB3_T1
//
//  Created by Juho Parkkinen on 17/09/2019.
//  Copyright © 2019 Juho Parkkinen. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {
    let todos = [""]
    
    func showTodoTextQueryDialog() {
        var textInput: UITextField? = nil
        let alert = UIAlertController(title: "Add new", message: "Please enter text for the item", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { action in
            print("OK Button pressed : " + textInput!.text!)
        }))
        alert.addTextField(configurationHandler: {(textField: UITextField!) in
            textField.placeholder = "Todo Item"
            textInput = textField
        })
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func addNewButton(_ sender: UIBarButtonItem) {
        showTodoTextQueryDialog()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    }

}
