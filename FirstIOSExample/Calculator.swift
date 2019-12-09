//
//  Calculator.swift
//  FirstIOSExample
//
//  Created by Amad Khan on 09/12/2019.
//  Copyright © 2019 UOWD. All rights reserved.
//

import Foundation


class Calculator: CalculatorProtocol{    func add(number1: Double, number2: Double) -> Double {
        return number1 + number2
    }
    func subtract(number1: Double, number2: Double) -> Double {
        return number1 - number2
    }
    func division(number1: Double, number2: Double) -> Double {
        if(number2 != 0) {
            return number1 / number2
        } else {
            return 0
        }
    }
    func multiplication(number1: Double, number2: Double) -> Double {
        return number1 * number2
    }
}
