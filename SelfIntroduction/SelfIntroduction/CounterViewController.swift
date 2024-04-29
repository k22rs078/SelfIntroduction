//
//  CounterViewController.swift
//  SelfIntroduction
//
//  Created by yuuto takeuchi on 2024/04/27.
//

import UIKit

class CounterViewController: UIViewController {
    var count = 0
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let labelText = countLabel.text {
            print(labelText)
        }
    }
    
    @IBAction func countDownButton(_ sender: Any) {
        count = count - 1
        countLabel.text = String(count)
        changeTextColor()
    }
    
    @IBAction func countUpButton(_ sender: Any) {
        count = count + 1
        countLabel.text = "\(count)"
        changeTextColor()
    }
    
    func changeTextColor(){
        if count == 2{
            countLabel.textColor = .green
        }
    }
}
