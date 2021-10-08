//
//  ViewController.swift
//  JWPlayerKit-IssueReproduction
//
//  Created by Amitai Blickstein on 7/29/21.
//

import UIKit
import JWPlayerKit

class SwiftChildViewController: UIViewController {
    @IBOutlet var playerContainerView: UIView!
    private var playerView = JWPlayerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let item = try JWPlayerItemBuilder()
                .file(URL(string:
//                            "http://content.bitsontherun.com/videos/3XnJSIm4-injeKYZS.mp4"
                          "https://content.jwplatform.com/videos/Rdo9succ-LuOJks2a.mp4"
                         )!)
                .build()
            
            let config = try JWPlayerConfigurationBuilder()
                .playlist([item])
//                .autostart(true)
                .build()
            playerView.player.configurePlayer(with: config)
            
//            playerView.player.playbackStateDelegate = self
            playerView.player.delegate = self
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

extension SwiftChildViewController: JWPlayerDelegate {
    func jwplayerIsReady(_ player: JWPlayer) {
        print(#file, #function)
    }
    
    func jwplayer(_ player: JWPlayer, failedWithError code: UInt, message: String) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, failedWithSetupError code: UInt, message: String) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, encounteredWarning code: UInt, message: String) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, encounteredAdWarning code: UInt, message: String) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, encounteredAdError code: UInt, message: String) {
        print(#function)
    }
}

extension SwiftChildViewController: JWPlayerStateDelegate {
    func jwplayerHasSeeked(_ player: JWPlayer) {
        print(#function)
    }
    
    func jwplayerContentDidComplete(_ player: JWPlayer) {
        print(#function)
    }
    
    func jwplayerContentIsBuffering(_ player: JWPlayer) {
        print(#function)
    }
    
    func jwplayerContentWillComplete(_ player: JWPlayer) {
        print(#function)
    }
    
    func jwplayerPlaylistHasCompleted(_ player: JWPlayer) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, isVisible: Bool) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, usesMediaType type: JWMediaType) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, willPlayWithReason reason: JWPlayReason) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, didLoadPlaylist playlist: [JWPlayerItem]) {
        print(#file, #function)
        player.play()
    }
    
    func jwplayer(_ player: JWPlayer, didPauseWithReason reason: JWPauseReason) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, isPlayingWithReason reason: JWPlayReason) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, didBecomeIdleWithReason reason: JWIdleReason) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, didFinishLoadingWithTime loadTime: TimeInterval) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, updatedBuffer percent: Double, position time: JWTimeData) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, didLoadPlaylistItem item: JWPlayerItem, at index: UInt) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, seekedFrom oldPosition: TimeInterval, to newPosition: TimeInterval) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, playbackRateChangedTo rate: Double, at time: TimeInterval) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, isAttemptingToPlay playlistItem: JWPlayerItem, reason: JWPlayReason) {
        print(#function)
    }
}
