//
//  ViewController.swift
//  FirstIOSExample
//
//  Created by UOWD on 12/4/19.
//  Copyright © 2019 UOWD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        textLabel.text = textField.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

