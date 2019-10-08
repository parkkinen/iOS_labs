//
//  ViewController.swift
//  LAB1_T3
//
//  Created by Juho Parkkinen on 03/09/2019.
//  Copyright © 2019 Juho Parkkinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var name: String = ""
    @IBAction func buttonClick(_ sender: Any) {
        name = textFieldName.text!
        
        labelName.text = "Hello \(name)"
    }
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var textFieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

