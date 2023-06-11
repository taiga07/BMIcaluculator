//
//  ViewController.swift
//  BMICaluculator
//
//  Created by 谷太海 on 2023/06/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightTextField.placeholder = "身長をcmで入力してください。"
        weightTextField.placeholder = "体重をkgで入力してください。"
    }
    
//    「計算」ボタンが押された時に処理が実行されるブロック
    @IBAction func calcButtonAction(_ sender: Any) {
        let doubleH = Double(heightTextField.text!)  //身長に入力された値をDuble型で変数に代入
        let doubleW = Double(weightTextField.text!)  //体重に入力された値をDuble型で変数に代入
        bmiLabel.text = calculation(height: doubleH!, weight: doubleW!) //上記で代入した値を、calculationメソッドに渡して結果をbmiLabelに出力する
    }
    
//    メソッド（BMIを計算するメソッド）
    func calculation(height: Double, weight: Double) -> String {
        let h = height / 100
        let w = weight
        var result = w / (h * h)
        result = floor(result * 10) / 10
        
        return result.description
    }
}

