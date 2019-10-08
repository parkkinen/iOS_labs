//
//  ViewController.swift
//  LAB2_T2
//
//  Created by Juho Parkkinen on 10/09/2019.
//  Copyright © 2019 Juho Parkkinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var clickCount = 0
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBAction func buttonClick(_ sender: UIButton) {
        clickCount += 1
        
        labelName.text = "You have pressed the button \(clickCount) times"
    }
}

