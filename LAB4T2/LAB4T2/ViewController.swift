//
//  ViewController.swift
//  LAB4T2
//
//  Created by Juho Parkkinen on 25/10/2019.
//  Copyright © 2019 Juho Parkkinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func greet(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let greetHello = segue.destination as! GreetingsViewController
        greetHello.textGreet = textField.text!
    }
    
}

