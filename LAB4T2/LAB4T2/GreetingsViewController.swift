//
//  GreetingsViewController.swift
//  LAB4T2
//
//  Created by Juho Parkkinen on 25/10/2019.
//  Copyright © 2019 Juho Parkkinen. All rights reserved.
//

import UIKit

class GreetingsViewController: UIViewController {
    
    var textGreet:String = ""
    
    @IBOutlet weak var greetingPic: UIImageView!
    @IBOutlet weak var labelHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelHello.text = textGreet
        if (textGreet == "Veikko") {
            greetingPic.image = UIImage(named: "sun.png")
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
