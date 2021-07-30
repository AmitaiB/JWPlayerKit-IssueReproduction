//
//  ViewController.swift
//  JWPlayerKit-IssueReproduction
//
//  Created by Amitai Blickstein on 7/29/21.
//

import UIKit
import JWPlayerKit

private let sintelMP4File = "http://content.bitsontherun.com/videos/3XnJSIm4-injeKYZS.mp4"
private let encryptedFile_ezdrm = "http://fps.ezdrm.com/demo/video/ezdrm.m3u8"
private let encryptedFile_nbcu = "https://universalplus.akamaized.net/prod/044/media-20201030134752-wr8y-1.m3u8/master.m3u8"


class SwiftViewController: UIViewController {
    @IBOutlet var playerContainerView: UIView!
    private var playerView = JWPlayerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Since there are no controls for this player, it relies on autostart,
        // so put the file under test as the first in this array.
        do {
            let playlist = try [
                encryptedFile_ezdrm,
                sintelMP4File,
                encryptedFile_nbcu,
            ]
            .map({try JWPlayerItemBuilder()
                .file(URL(string: $0)!)
                .build()
            })

            let config = try JWPlayerConfigurationBuilder()
                .playlist(playlist)
                .autostart(true)
                .build()
            playerView.player.configurePlayer(with: config)
            playerView.player.contentKeyDataSource = DRMContentDecryptionKeyDataSource.shared
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

extension SwiftViewController: JWPlayerDelegate {
    func jwplayerIsReady(_ player: JWPlayer) {
        print(#function)
    }
    
    func jwplayer(_ player: JWPlayer, failedWithError code: UInt, message: String) {
        print("""
            \(#function)
            code: \(code)
            message: \(message)
            """)
    }
    
    
    func jwplayer(_ player: JWPlayer, failedWithSetupError code: UInt, message: String) {
        print("""
            \(#function)
            code: \(code)
            message: \(message)
            """)
    }
    
    func jwplayer(_ player: JWPlayer, encounteredWarning code: UInt, message: String) {
        print("""
            \(#function)
            code: \(code)
            message: \(message)
            """)
    }
    
    func jwplayer(_ player: JWPlayer, encounteredAdWarning code: UInt, message: String) {
        print("""
            \(#function)
            code: \(code)
            message: \(message)
            """)
    }
    
    func jwplayer(_ player: JWPlayer, encounteredAdError code: UInt, message: String) {
        print("""
            \(#function)
            code: \(code)
            message: \(message)
            """)
    }
}
