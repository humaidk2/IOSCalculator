//
//  CalculatorProtocol.swift
//  FirstIOSExample
//
//  Created by Amad Khan on 09/12/2019.
//  Copyright © 2019 UOWD. All rights reserved.
//

import Foundation

protocol CalculatorProtocol{
    func add(number1: Double, number2: Double) -> Double
    func subtract(number1: Double, number2: Double) -> Double
    func division(number1: Double, number2: Double) -> Double
    func multiplication(number1: Double, number2: Double) -> Double
}
