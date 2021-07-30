//
//  ViewController.swift
//  JWPlayerKit-IssueReproduction
//
//  Created by Amitai Blickstein on 7/29/21.
//

import UIKit
import JWPlayerKit

class SwiftViewController: UIViewController {
    @IBOutlet var playerContainerView: UIView!
    private var playerView = JWPlayerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let item = try JWPlayerItemBuilder()
                .file(URL(string: "http://content.bitsontherun.com/videos/3XnJSIm4-injeKYZS.mp4")!)
                .build()
            
            let config = try JWPlayerConfigurationBuilder()
                .playlist([item])
//                .autostart(true)
                .build()
            playerView.player.configurePlayer(with: config)
        }
        catch {print(error.localizedDescription)}
        
        title = "JWP SDK ver: \(JWPlayerKitVersionNumber)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playerContainerView.addSubview(playerView)
        playerView.constrainToSuperview()
        
    }
}

