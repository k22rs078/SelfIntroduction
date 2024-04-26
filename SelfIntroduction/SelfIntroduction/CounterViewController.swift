//
//  CounterViewController.swift
//  SelfIntroduction
//
//  Created by yuuto takeuchi on 2024/04/25.
//

import UIKit

class CounterViewController: UIViewController {
    var count = 0
    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(countLabel.text)
    }
    @IBAction func countDownButton(_ sender: Any) {
        count = count - 1
        countLabel.text = String(count)
        changeTextColor()
    }
    @IBAction func countUpButton(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
        changeTextColor()
    }
    func changeTextColor(){
        if count == 2{
            countLabel.textColor = UIColor.green
        }
    }
}
