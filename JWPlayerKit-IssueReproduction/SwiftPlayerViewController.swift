//
//  SwiftPlayerViewController.swift
//  JWPlayerKit-IssueReproduction
//
//  Created by Amitai Blickstein on 7/29/21.
//

import UIKit
import JWPlayerKit
import AVKit

class SwiftPlayerViewController: JWPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        try! AVAudioSession.sharedInstance().setCategory(.playback)
        try! AVAudioSession.sharedInstance().setActive(true)

        configurePlayerForPlaylistTest()
    }
    
    func configurePlayerForPlaylistTest() {
        do {
            let item1 = try JWPlayerItemBuilder()
                .file(URL(string: "https://content.jwplatform.com/videos/Rdo9succ-LuOJks2a.mp4")!)
                .title("Item 1")
                .description("This is the first item")
                .posterImage(URL(string: "https://content.jwplatform.com/thumbs/Rdo9succ-320.jpg")!)
                .build()
            let item2 = try JWPlayerItemBuilder()
                .file(URL(string: "https://content.jwplatform.com/videos/oydiNSkj-LuOJks2a.mp4")!)
                .title("Item 2")
                .description("This is the second item")
                .posterImage(URL(string: "https://content.jwplatform.com/thumbs/oydiNSkj-320.jpg")!)
                .build()
            let item3 = try JWPlayerItemBuilder()
                .file(URL(string: "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8")!)
                .title("Item 3")
                .description("This is the third item")
                .posterImage(URL(string: "https://i.pinimg.com/originals/13/c6/23/13c623b8665fc7285a5b2479ba6e04b9.jpg")!)
                .build()
            
            /**
             [item1, item2] — reproduced
             [item2, item1] — reproduced
             
             [item1 (or any single item)] — cannot reproduce
             [item3, item1, item 2 (ONLY when item3 was first)] — cannot reproduce
             */
            
            let config = try JWPlayerConfigurationBuilder()
                .autostart(true)
                .playlist([item2, item1]) // Key decision point
                .build()
            
            player.configurePlayer(with: config)
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    override func jwplayer(_ player: JWPlayer, didPauseWithReason reason: JWPauseReason) {
        super.jwplayer(player, didPauseWithReason: reason)
        player.seek(to: player.time.duration - 5)            
    }
}
