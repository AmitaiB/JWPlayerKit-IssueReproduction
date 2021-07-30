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
            
            playerView.player.configurePlayer(with: config)
        } catch {print(error.localizedDescription)}
    }
    
    //    /**
    //     Reports when the content has begun playing.
    //     - note: Analagous to the `onPlay` event in version 3.x.
    //     - parameter player: The player emitting the event.
    //     - parameter reason: The reason play has begun.
    //     */
    //    override func jwplayer(_ player: JWPlayerKit.JWPlayer, isPlayingWithReason reason: JWPlayerKit.JWPlayReason) {
    //
    //    }
    
    
//    /**
//     Called when the player's dimensions have changed.
//     - parameter view: The JWPlayerView emitting the resize event.
//     - parameter oldSize: The previous size of the player.
//     - parameter newSize: The new size of the player on the screen.
//     */
//    override func playerView(_ view: JWPlayerKit.JWPlayerView, sizeChangedFrom oldSize: CGSize, to newSize: CGSize) {
//
//    }
//
//    /**
//     When the player is fully initialized, this method is called on the delegate.
//     - parameter player: The player which initialized successfully.
//     */
//    override func jwplayerIsReady(_ player: JWPlayerKit.JWPlayer) {
//
//    }
//
//    /**
//     When the player encounters an error with playback, this method is called on the delegate.
//     - parameter player: The player generating the error.
//     - parameter code: The numerical code representing the error.
//     - parameter message: A human-readable description of the error.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, failedWithError code: UInt, message: String) {
//
//    }
//
//    /**
//     When the player encounters an error during setup and initialization, this method is called on the delegate.
//     - parameter player: The player generating the error.
//     - parameter code: The numerical code representing the error.
//     - parameter message: A human-readable description of the error.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, failedWithSetupError code: UInt, message: String) {
//
//    }
//
//    /**
//     When the player encounters a warning within the SDK, this method is called on the delegate.
//     - parameter player: The player generating the error.
//     - parameter code: The numerical code representing the warning.
//     - parameter message: A human-readable description of the warning.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, encounteredWarning code: UInt, message: String) {
//
//    }
//
//    /**
//     When the player encounters an ad error within the SDK, this method is called on the delegate. Ad errors prevent ads from playing, but do not prevent media playback from continuing.
//     - parameter player: The player generating the error.
//     - parameter code: The numerical code representing the ad error.
//     - parameter message: A human-readable description of the error.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, encounteredAdError code: UInt, message: String) {
//
//    }
//
//    /**
//     When the player encounters an ad warning within the SDK, this method is called on the delegate. Ad warnings do not prevent the ad from continuing to play.
//     - parameter player: The player generating the warning.
//     - parameter code: The numerical code representing the ad warning.
//     - parameter message: A human-readable description of the warning.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, encounteredAdWarning code: UInt, message: String) {
//
//    }
//
//    /**
//     This callback is triggered when a time event fires for the media.
//
//     When this is triggered, both a duration and position are supplied. This event does not fire when an ad is playing. If you are overriding this method, you must call the super method.
//     - parameter time: The position and duration of the currently playing media.
//     */
//    override func onMediaTimeEvent(_ time: JWPlayerKit.JWTimeData) {
//        //print("onMediaTimeEvent: \(time.position) : \(time.duration)")
//    }
//
//    /**
//     This callback is triggered when a time event fires for a currently playing ad.
//
//     When this is triggered, both a duration and position within the ad are supplied. This event only fires when an ad is playing. If you are overriding this method, you must call the super method.
//     - parameter time: The position and duration of the currently playing ad.
//     */
//    override func onAdTimeEvent(_ time: JWPlayerKit.JWTimeData) {
//
//    }
//
//    /**
//     Reports when the content is about to complete.
//     - note: Analagous to the `onBeforeComplete` event in version 3.x.
//     - parameter player: The player emitting the event.
//     */
//    override func jwplayerContentWillComplete(_ player: JWPlayerKit.JWPlayer) {
//
//    }
//
//    /**
//     Reports when the content will begin playing.
//     - note: Analagous to the `onBeforePlay` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter reason: The reason play will begin.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, willPlayWithReason reason: JWPlayerKit.JWPlayReason) {
//
//    }
//
//    /**
//     Reports when the content is buffering.
//     - note: Analagous to the `onBuffer` event in version 3.x.
//     - parameter player: The player emitting the event.
//     */
//    override func jwplayerContentIsBuffering(_ player: JWPlayerKit.JWPlayer) {
//
//    }
//
//    /**
//     Reports when additional data has been added to the buffer.
//     - note: Analagous to the `onBufferChange` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter percent: Percentage of the media which is currently buffered.
//     - parameter time: The current position in the media file.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, updatedBuffer percent: Double, position time: JWPlayerKit.JWTimeData) {
//
//    }
//
//    /**
//     Reports when the content is complete.
//     - note: Analagous to the `onComplete` event in version 3.x.
//     - parameter player: The player emitting the event.
//     */
//    override func jwplayerContentDidComplete(_ player: JWPlayerKit.JWPlayer) {
//
//    }
//
//    /**
//     Reports when the content has finished loading.
//     - note: Analagous to the `onFirstFrame` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter loadTime: The amount of time (in seconds) it took for the player to transition from a play attempt to a firstFrame event.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, didFinishLoadingWithTime loadTime: TimeInterval) {
//
//    }
//
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, isAttemptingToPlay playlistItem: JWPlayerKit.JWPlayerItem, reason: JWPlayerKit.JWPlayReason) {
//
//    }
//
//    /**
//     Reports when the content has paused.
//     - note: Analagous to the `onPause` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter reason: The reason the player became paused.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, didPauseWithReason reason: JWPlayerKit.JWPauseReason) {
//
//    }
//
//    /**
//     Reports when the content has become idle and is awaiting a new state or command.
//     - note: Analagous to the `onIdle` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter reason: The reason the player became idle.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, didBecomeIdleWithReason reason: JWPlayerKit.JWIdleReason) {
//
//    }
//
//    /**
//     Reports when type of media has been loaded..
//     - parameter player: The player emitting the event.
//     - parameter type: The type of media content being played.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, usesMediaType type: JWPlayerKit.JWMediaType) {
//
//    }
//
//    /**
//     Reports when the player has become visible or not visible.
//
//     When the player is 50% or more on the screen, it is reported as visible. If it is less, the player is reported as not visible. This event only reports when this status has changed.
//     - note: Analagous to the `onViewable` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter isVisible: True, if the player is visible. False if it is not.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, isVisible: Bool) {
//
//    }
//
//    /**
//     Reports when a new playlist has been loaded into the player.
//     - note: Analagous to the `onPlaylist` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter playlist: An array of playlist items in the playlist, in playlist order.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, didLoadPlaylist playlist: [JWPlayerKit.JWPlayerItem]) {
//
//    }
//
//    /**
//     Reports when a new playlist has been loaded into the player.
//     - note: Analagous to the `onPlaylistItem` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter item: The playlist item that has been loaded into the player.
//     - parameter index: The index the playlist item in the playlist.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, didLoadPlaylistItem item: JWPlayerKit.JWPlayerItem, at index: UInt) {
//
//    }
//
//    /**
//     Reports when the entirety of the current playlist has finished playing.
//     - note: Analagous to the `onPlaylistComplete` event in version 3.x.
//     - parameter player: The player emitting the event.
//     */
//    override func jwplayerPlaylistHasCompleted(_ player: JWPlayerKit.JWPlayer) {
//
//    }
//
//    /**
//     Reports when content playback resumes after seeking.
//     - note: Analagous to the `onSeeked` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter oldPosition: The position, in seconds, when seeking began.
//     - parameter newPosition: The position, in seconds, requested to be seeked to.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, seekedFrom oldPosition: TimeInterval, to newPosition: TimeInterval) {
//
//    }
//
//    /**
//     Reports when content playback resumes after seeking.
//     - note: Analagous to the `onSeeked` event in version 3.x.
//     - parameter player: The player emitting the event.
//     */
//    override func jwplayerHasSeeked(_ player: JWPlayerKit.JWPlayer) {
//
//    }
//
//    /**
//     Reports a change in the playback rate.
//
//     This method reports when the playback rate has changed, excluding when the rate has changed due to play beginning, or pausing. To listen for state changes in the player, such as play or pause, conform to the `JWPlaybackStateDelegate`
//     - note: Analagous to the `onPlaybackRateChanged` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter rate: The new playback rate.
//     - parameter time: The position in the content, expressed in seconds, at which the playback rate changed.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, playbackRateChangedTo rate: Double, at time: TimeInterval) {
//
//    }
//
//    /**
//     Fires when the initial metadata of the video has loaded.
//     - parameter player: The player that receives metadata about the media.
//     - parameter metadata: Metadata about the current media.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, didReceiveMediaMetadata metadata: JWPlayerKit.JWMediaMetadata) {
//
//    }
//
//    /**
//     Reports when the list of available audio tracks is updated.
//     - note: Analagous to the `onAudioTracks` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter levels: An array containing descriptions of the available audio tracks.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, audioTracksUpdated levels: [JWPlayerKit.JWMediaSelectionOption]) {
//
//    }
//
//    /**
//     Reports when the active audio track is changed.
//     - note: Analagous to the `onAudioTrackChanged` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter currentLevel: The currently selected audio track, expressed as an index into the available audio tracks.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, audioTrackChanged currentLevel: Int) {
//
//    }
//
//    /**
//     Reports when the list of available quality levels is updated. Happens shortly after a playlist item starts playing.
//     Not applicable for HLS.
//     - note: Analagous to the `onLevels` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter levels: An array containing descriptions of the available quality levels.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, qualityLevelsUpdated levels: [JWPlayerKit.JWVideoSource]) {
//
//    }
//
//    /**
//     Reports when the active quality level is changed. Happens in response to e.g. a user clicking the controlbar quality menu or calling setCurrentLevel. Not applicable for HLS.
//     - note: Analagous to the `onLevelsChanged` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter currentLevel: The currently selected quality level, expressed as an index into the available quality levels.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, qualityLevelChanged currentLevel: Int) {
//
//    }
//
//    /**
//     Reports when caption options become available.
//     - note: Analagous to the `onCaptionList` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter options: A list of available caption tracks.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, updatedCaptionList options: [JWPlayerKit.JWMediaSelectionOption]) {
//
//    }
//
//    /**
//     Reports when a new caption track has been selected.
//
//     The supplied index is the newly selected caption track, and can be used to index into the list of options supplied by `updatedCaptionList`
//     - note: Analagous to the `onCaptionsChanged` event in version 3.x.
//     - parameter player: The player emitting the event.
//     - parameter index: The index of the currently selected caption track.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, captionTrackChanged index: Int) {
//
//    }
//
//    /**
//     Reports when a caption is being presented.
//
//     Multiple captions may be presented at the same time. These are considered separate lines, but each string may contain multiple lines as well, separated by newline characters.
//     - parameter player: The player emitting the event.
//     - parameter caption: A list of strings being displayed for the caption.
//     - parameter time: The point in time the caption is being presented, and for how long the caption will stay on the screen. If `duration` is 0, the caption will stay on the screen until the next caption is displayed.
//     */
//    override func jwplayer(_ player: JWPlayerKit.JWPlayer, captionPresented caption: [String], at time: JWPlayerKit.JWTimeData) {
//
//    }
//
//    /**
//     Reports when an event is emitted by the player.
//     - parameter player: The player playing the ad.
//     - parameter event: A description of the ad, including the type of event being reported.
//     */
//    override func jwplayer(_ player: AnyObject, adEvent event: JWPlayerKit.JWAdEvent) {
//
//    }
//
//    // MARK: JWPlayerViewControllerDelegate methods
//    /**
//     Called before the player is enlarged to the size of the screen.
//     - parameter controller: The JWPlayerViewController emitting the event.
//     - returns: The `JWFullScreenViewController` that will be used for full screen. If nil is returned, will use the default `JWFullScreenViewController`.
//     */
//    func playerViewControllerWillGoFullScreen(_ controller: JWPlayerKit.JWPlayerViewController) -> JWPlayerKit.JWFullScreenViewController? {
//        return nil
//    }
//
//    /**
//     Called after the player has enlarged to the size of the screen.
//     - parameter controller: The JWPlayerViewController emitting the event.
//     */
//    func playerViewControllerDidGoFullScreen(_ controller: JWPlayerKit.JWPlayerViewController) {
//
//    }
//
//    /**
//     Called before the player dismisses full screen, and shrinks back to its normal size.
//     - parameter controller: The JWPlayerViewController emitting the event.
//     */
//    func playerViewControllerWillDismissFullScreen(_ controller: JWPlayerKit.JWPlayerViewController) {
//
//    }
//
//    /**
//     Called after the player dismisses full screen, and shrinks back to its normal size.
//     - parameter controller: The JWPlayerViewController emitting the event.
//     */
//    func playerViewControllerDidDismissFullScreen(_ controller: JWPlayerKit.JWPlayerViewController) {
//
//    }
//
//    /**
//     Called when the control bar is done hiding or showing itself.
//     - parameter controller: The JWPlayerViewController emitting the event.
//     - parameter isVisible: true, if the control bar has finished showing itself. false if it has finished hiding itself.
//     - parameter frame: The frame of the visible control bar. If the control bar is not visible, CGRect.zero is returned.
//     */
//    func playerViewController(_ controller: JWPlayerKit.JWPlayerViewController, controlBarVisibilityChanged isVisible: Bool, frame: CGRect) {
//
//    }
//
//    /**
//     Called when the player's dimensions have changed.
//     - parameter controller: The JWPlayerViewController emitting the resize event.
//     - parameter size: The new size of the player on the screen.
//     */
//    func playerViewController(_ controller: JWPlayerKit.JWPlayerViewController, sizeChangedFrom oldSize: CGSize, to newSize: CGSize) {
//
//    }
//
//    /**
//     This method is triggered when the player is tapped. It is not triggered if the user tapped a button or other user interface element.
//     - parameter controller: The JWPlayerViewController emitting the event.
//     - parameter position: A position within the JWPlayerView that was tapped.
//     */
//    func playerViewController(_ controller: JWPlayerKit.JWPlayerViewController, screenTappedAt position: CGPoint) {
//
//    }
//
//    /**
//     Reports when the related menu has opened.
//     - parameter controller: The JWPlayerViewController related to the event.
//     - parameter items: The playlist items displayed in the related menu.
//     - parameter method: Why the menu closed. Possible values are .user and .contentComplete.
//     */
//    func playerViewController(_ controller: JWPlayerKit.JWPlayerViewController, relatedMenuOpenedWithItems items: [JWPlayerKit.JWPlayerItem], withMethod method: JWPlayerKit.JWRelatedInteraction) {
//
//    }
//
//    /**
//     Reports when the related menu has closed.
//     - parameter controller: The JWPlayerViewController related to the event.
//     - parameter method: Why the menu closed. Possible values are .user and .autostart.
//     */
//    func playerViewController(_ controller: JWPlayerKit.JWPlayerViewController, relatedMenuClosedWithMethod method: JWPlayerKit.JWRelatedInteraction) {
//
//    }
//
//    /**
//     Reports when content in the related menu has begun playing.
//     - parameter controller: The JWPlayerViewController related to the event.
//     - parameter item: The playlist item which has begun playing.
//     - parameter index: The index the playlist item was at in the related menu's feed.
//     - parameter method: Why the item began playing. Possible values are .user and .autostart.
//     */
//    func playerViewController(_ controller: JWPlayerKit.JWPlayerViewController, relatedItemBeganPlaying item: JWPlayerKit.JWPlayerItem, atIndex index: Int, withMethod method: JWPlayerKit.JWRelatedInteraction) {
//
//    }

}
