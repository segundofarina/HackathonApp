//
//  VideoViewController.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoViewController: UIViewController {

    var video: String! = nil
    var text: String! = nil
    var prevImage: String! = nil
    var navbarTitle: String! = nil
    
    var playerController = AVPlayerViewController()
    var player: AVPlayer?
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var viewPreview: UIButton!
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.isEditable = false
        
        if let url = video {
            let videoUrl = URL(fileURLWithPath: url)
            self.player = AVPlayer(url: videoUrl as URL)
            self.playerController.player = self.player
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textView.text = text
        self.navBar.topItem?.title = navbarTitle
    }

    @IBAction func doneBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func playVideo(_ sender: Any) {
        self.present(self.playerController, animated: true, completion: {
            self.playerController.player?.play()
        })
    }
    /*self.present(self.playerController, animated: true, completition: {
         self.playerContoller.player?.play()
     })*/
    
}
