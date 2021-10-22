//
//  SelectLavelViewController.swift
//  QuizApp
//
//  Created by ゆり on 2021/10/11.
//

import UIKit

class SelectLavelViewController: UIViewController {

   var selectTag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func levelButtonAction(sender: UIButton){
        print(sender.tag)
        performSegue(withIdentifier: "toQuizVC", sender: nil)
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
