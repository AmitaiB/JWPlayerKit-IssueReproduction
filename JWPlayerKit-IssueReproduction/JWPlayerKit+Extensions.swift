//
//  JWPlayerKit+Extensions.swift
//  JWPlayerKit-IssueReproduction
//
//  Created by Amitai Blickstein on 8/5/21.
//

import Foundation
import JWPlayerKit

extension JWPauseReason: CustomStringConvertible {
    public var description: String {
        switch self {
            case .clickthrough: return "clickthrough"
            case .external:     return "external"
            case .interaction:  return "interaction"
            case .unknown:      return "unknown"
            @unknown default:   return "unknown"
                
        }
    }
}

extension JWPlayReason: CustomStringConvertible {
    public var description: String {
        switch self {
            case .external:     return "external"
            case .interaction:  return "interaction"
            case .playlist:     return "playlist"
            case .viewable:     return "viewable"
            case .repeatContent: return "repeatContent"
            case .relatedInteraction: return "relatedInteraction"
            case .relatedAuto:  return "relatedAuto"
            case .unknown:      return "unknown"
            @unknown default:   return "unknown"
                
        }
    }
}

extension JWIdleReason: CustomStringConvertible {
    public var description: String {
        switch self {
            case .complete: return "complete"
            case .idle:     return "idle"
            case .unknown:  return "unknown"
            @unknown default: return "unknown"
        }
    }
}
