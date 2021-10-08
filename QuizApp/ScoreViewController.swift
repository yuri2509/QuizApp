//
//  ScoreViewController.swift
//  QuizApp
//
//  Created by ゆり on 2021/09/28.
//

import UIKit
import AVFoundation

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLavel: UILabel!
    @IBOutlet weak var messageLavel: UILabel!
    
//    private let perfectSound = try! AVAudioPlayer(data: NSDataAsset(name: "perfect")!.data)
//    private let not_perfectSound = try! AVAudioPlayer(data: NSDataAsset(name: "not_perfect")!.data)
//    private let otherScoreSound = try! AVAudioPlayer(data: NSDataAsset(name: "other_score")!.data)
//
//    private func perfectSoundPlay() {
//        perfectSound.play()
//    }
//
//    private func notPerfectSoundPlay() {
//        not_perfectSound.play()
//    }
//
//    private func otherScoreSoundPlay() {
//        otherScoreSound.play()
//    }
    
    var player:AVAudioPlayer!
    
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLavel.text = "\(correct)問正解！"
        
        if 0 >= correct {
//            notPerfectSoundPlay()
            messageLavel.text = "残念…"
            messageLavel.textColor = UIColor.blue
            
            if let soundURL = Bundle.main.url(forResource: "not_perfect", withExtension: "mp3") {
                do {
                    player = try AVAudioPlayer(contentsOf: soundURL)
                    player.play()
                } catch {
                    print("error")
                }
            }
        } else if 5 == correct {
//            perfectSoundPlay()
            messageLavel.text = "おめでとう！！"
            messageLavel.textColor = UIColor.red
            if let soundURL = Bundle.main.url(forResource: "perfect", withExtension: "mp3") {
                do {
                    player = try AVAudioPlayer(contentsOf: soundURL)
                    player?.play()
                } catch {
                    print("error")
                }
            }
        } else {
//            otherScoreSoundPlay()
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
