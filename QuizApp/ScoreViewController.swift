//
//  ScoreViewController.swift
//  QuizApp
//
//  Created by ゆり on 2021/09/28.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLavel: UILabel!
    @IBOutlet weak var messageLavel: UILabel!
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLavel.text = "\(correct)問正解！"
        
        if 0 >= correct {
            messageLavel.text = "残念…"
            messageLavel.textColor = UIColor.blue
        } else if 5 == correct {
            messageLavel.text = "おめでとう！！"
            messageLavel.textColor = UIColor.red
        } else {
            messageLavel.text = "お疲れ様"
        }
    }
    
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
