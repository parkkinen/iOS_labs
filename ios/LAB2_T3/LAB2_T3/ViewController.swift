//
//  ViewController.swift
//  LAB2_T3
//
//  Created by Juho Parkkinen on 17/09/2019.
//  Copyright © 2019 Juho Parkkinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var name: String = "";
    
    @IBAction func rndmButton(_ sender: UIButton) {
        name = nameField.text!
        helloLabel.text = "Hola \(name)!"
    }
    
    @IBAction func finButton(_ sender: UIButton) {
        name = nameField.text!
        helloLabel.text = "Terve \(name)!"
    }
    
    @IBAction func sweButton(_ sender: UIButton) {
        name = nameField.text!
        helloLabel.text = "Hejjsan \(name)!"
    }
    
    @IBAction func engButton(_ sender: UIButton) {
        name = nameField.text!
        helloLabel.text = "Hello \(name)!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

