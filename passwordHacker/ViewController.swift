//
//  ViewController.swift
//  passwordHacker
//
//  Created by Emily Nozaki on 2022/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel1: UILabel!
    @IBOutlet weak var resultLabel2: UILabel!
    @IBOutlet weak var resultLabel3: UILabel!
    @IBOutlet weak var resultLabel4: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    var password: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        password = Int.random(in: 0...9999)
        // Do any additional setup after loading the view.
    }
    @IBAction func start(_ sender: Any) {
        for i in 0...9999 {
            //解析している感じを出すぜ！
            countLabel.text = String(i)
            //RunLoopを使って、処理を〇〇秒待機させる
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            if i == password{
                var digits = [Int]()
                for _ in 0...3 {
                    digits.append(password%10)
                    password = password / 10
                }
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
                //解析のところを止める
                break
            }
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        countLabel.text = "startで解析開始"
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
        password = Int.random(in: 0...9999)
        
    }
    
}

