//
//  ViewController.swift
//  MisakoooKadai2
//
//  Created by misakoarai on 2021/03/24.
//

import UIKit

class CalculationViewController: UIViewController {
    private var selectOperator = "+"
    
    @IBOutlet private weak var numberTextField1: UITextField!
    @IBOutlet private weak var numberTextField2: UITextField!
    @IBOutlet private weak var operatorSegmentedControl: UISegmentedControl!
    @IBOutlet private weak var totalLabel: UILabel!
    
    @IBAction private func selectedOperatorSegment(_ sender: UISegmentedControl) {
        selectOperator = sender.titleForSegment(at: sender.selectedSegmentIndex)!
    }
    
    @IBAction private func didTapCalculationButton(_ sender: Any) {
        let number1 = Double(numberTextField1.text!) ?? 0
        let number2 = Double(numberTextField2.text!) ?? 0
        
        switch selectOperator {
        case "+":
            totalLabel.text = String(number1 + number2)
        case "-":
            totalLabel.text = String(number1 - number2)
        case "×":
            totalLabel.text = String(number1 * number2)
        case "÷":
            if number2 == 0 {
                totalLabel.text = "割る数には0以外を入力してください。"
            } else {
                totalLabel.text = String(number1 / number2)
            }
        default:
            break
        }
    }
}
