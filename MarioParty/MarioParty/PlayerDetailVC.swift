//
//  PlayerDetailVC.swift
//  MarioParty
//
//  Created by fahad alrashed on 7/3/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation


class PlayerDetailVC: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var starsImageView: UIImageView!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var playerSoundEffect : AVAudioPlayer?
    
    override func viewDidLoad() {
        nameLabel.text = selectedPlayer.name
        imageView.image = UIImage(named: selectedPlayer.name)
        backgroundImageView.image = UIImage(named: selectedPlayer.BG())
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func randomizedstars(_ sender: Any) {
        let stars = ["Star1","Star2","Star3","Star4","Star5"]
        let randomstar = stars.randomElement()!
        starsImageView.image = UIImage(named: randomstar)
    }
    
 
    @IBAction func playCharacterSound(_ sender: Any) {
        playMusic(musicName: selectedPlayer.musicName())
    }
     func playMusic(musicName: String){
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            playerSoundEffect = try AVAudioPlayer(contentsOf: url)
            playerSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
}
