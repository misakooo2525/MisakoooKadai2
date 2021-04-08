//
//  ViewController.swift
//  MisakoooKadai2
//
//  Created by misakoarai on 2021/03/24.
//

import UIKit

class CalculationViewController: UIViewController {
    @IBOutlet private weak var numberTextField1: UITextField!
    @IBOutlet private weak var numberTextField2: UITextField!
    @IBOutlet private weak var operatorSegmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!
    
    @IBAction private func didTapCalculationButton(_ sender: Any) {
        let number1 = Double(numberTextField1.text!) ?? 0
        let number2 = Double(numberTextField2.text!) ?? 0

        let resultText: String
        
        switch operatorSegmentedControl.selectedSegmentIndex {
        case 0:
            resultText = String(number1 + number2)
        case 1:
            resultText = String(number1 - number2)
        case 2:
            resultText = String(number1 * number2)
        case 3:
            if number2 == 0 {
                resultText = "割る数には0以外を入力してください。"
            } else {
                resultText = String(number1 / number2)
            }
        default:
            return
        }

        resultLabel.text = resultText
    }
}
