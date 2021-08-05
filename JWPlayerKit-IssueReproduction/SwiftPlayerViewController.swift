//
//  SwiftPlayerViewController.swift
//  JWPlayerKit-IssueReproduction
//
//  Created by Amitai Blickstein on 7/29/21.
//

import UIKit
import JWPlayerKit

class SwiftPlayerViewController: JWPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let item = try JWPlayerItemBuilder()
                .file(URL(string: "http://content.bitsontherun.com/videos/3XnJSIm4-injeKYZS.mp4")!)
                .build()
            
            let config = try JWPlayerConfigurationBuilder()
                .playlist([item])
                .autostart(true)
                .build()
            
            player.delegate = self
            playerView.player.configurePlayer(with: config)
            
        } catch {print(error.localizedDescription)}
    }
    
    override func jwplayer(_ player: JWPlayer, didPauseWithReason reason: JWPauseReason) {
        super.jwplayer(player, didPauseWithReason: reason)
        print(#function, "reason: \(reason.description)")
    }
    
    override func jwplayer(_ player: JWPlayer, isPlayingWithReason reason: JWPlayReason) {
        super.jwplayer(player, isPlayingWithReason: reason)
        print(#function, "reason: \(reason.description)")
    }
    
    override func jwplayer(_ player: JWPlayer, willPlayWithReason reason: JWPlayReason) {
        super.jwplayer(player, willPlayWithReason: reason)
        print(#function, "reason: \(reason.description)")
    }
}
