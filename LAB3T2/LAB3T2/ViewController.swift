//
//  ViewController.swift
//  LAB3T2
//
//  Created by Juho Parkkinen on 25/10/2019.
//  Copyright © 2019 Juho Parkkinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var browserTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openBrowser(_ sender: UIButton) {
        let url = NSURL(string: browserTextField.text!)!
        UIApplication.shared.openURL(url as URL)
    }

    @IBAction func sendEmail(_ sender: UIButton) {
        let emailString = emailTextField.text!
        let url = NSURL(string: "mailto:" + emailString)
        UIApplication.shared.openURL(url as! URL)
    }
    
    @IBAction func openCamera(_ sender: UIButton) {
        let cameraVc = UIImagePickerController()
        cameraVc.sourceType = UIImagePickerController.SourceType.camera
        self.present(cameraVc, animated: true, completion: nil)
    }
    
    @IBAction func createCall(_ sender: UIButton) {
        if let url = URL(string: "tel://\(phoneTextField.text!)"){
            UIApplication.shared.openURL(url)
        }
    }
}
