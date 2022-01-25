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
                print("正解！")
            }
        }
        //19ページからやる！
        
    }
    
    @IBAction func reset(_ sender: Any) {
        
        password = Int.random(in: 0...9999)
        
    }
    
}

