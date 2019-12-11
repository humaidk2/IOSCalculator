//
//  ViewController.swift
//  FirstIOSExample
//
//  Created by UOWD on 12/4/19.
//  Copyright © 2019 UOWD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var RestoreButton: UIButton!
    @IBOutlet weak var currentNumberField: UITextField!
    
    var selectedOperator = "÷"
    var firstNum = 0.0
    var secondNum = 0.0
    var calculator:Calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func numberPressed(_ sender: UIButton) {
        currentNumberField.text = (currentNumberField.text  ?? "") + (sender.titleLabel?.text ?? "")
        
    }
    
    @IBAction func operatorSelected(_ sender: UIButton) {
        firstNum = Double(currentNumberField.text ?? "0") ?? 0.0
        selectedOperator = sender.titleLabel?.text ?? "÷"
        currentNumberField.text = ""
        
    }
    
    @IBAction func equalsPressed(_ sender: Any) {
        secondNum = Double(currentNumberField.text ?? "0") ?? 1.0
        var result = 0.0
        switch(selectedOperator){
        case "÷":
            result = calculator.division(number1: firstNum,number2: secondNum)
        case "x":
            result = calculator.multiplication(number1: firstNum, number2: secondNum)
        case "+":
            result = calculator.add(number1: firstNum, number2: secondNum)
        case "-":
            result = calculator.subtract(number1: firstNum, number2: secondNum)
        default:
            result = result + 0
        }
        RestoreButton.setTitle("\(firstNum) \(selectedOperator) \(secondNum) = \(Int(result))", for: .normal) 
        currentNumberField.text = "\(Int(result))"
        selectedOperator = "="
    }
    @IBAction func clearPressed(_ sender: Any) {
        currentNumberField.text = ""
    }
    
    @IBAction func RestoreButtonPressed(_ sender: Any) {
        currentNumberField.text = "\(Int(firstNum))"
    }
    
}

