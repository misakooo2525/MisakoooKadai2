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
    @IBOutlet private weak var totalLabel: UILabel!
    
    @IBAction private func didTapCalculationButton(_ sender: Any) {
        let number1 = Double(numberTextField1.text!) ?? 0
        let number2 = Double(numberTextField2.text!) ?? 0
        var caluculationResult: Double?
        
        switch operatorSegmentedControl.selectedSegmentIndex {
        case 0:
            caluculationResult = number1 + number2
        case 1:
            caluculationResult = number1 - number2
        case 2:
            caluculationResult = number1 * number2
        case 3:
            if number2 == 0 {
                totalLabel.text = "割る数には0以外を入力してください。"
            } else {
                caluculationResult = number1 / number2
            }
        default:
            break
        }
        if let text = caluculationResult?.description {
            totalLabel.text = text
        }
    }
}
