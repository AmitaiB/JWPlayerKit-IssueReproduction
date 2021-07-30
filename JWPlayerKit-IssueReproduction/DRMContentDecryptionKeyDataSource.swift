//
//  DRMController.swift
//  JWPlayerSDKTest
//
//  Created by Amitai Blickstein on 7/29/21.
//

import Foundation
import JWPlayerKit

class DRMContentDecryptionKeyDataSource: NSObject, JWDRMContentKeyDataSource {
    static var shared = DRMContentDecryptionKeyDataSource()
    private override init() {
        super.init()
    }
    
    func contentIdentifierForURL(_ url: URL, completionHandler handler: @escaping (Data?) -> Void) {
        print(#function)
        let assetPath = url.path
        
        if let assetId = assetPath.components(separatedBy: ";").last
        {
            let assetIdData = Data(bytes: (assetId.cString(using: .utf8)!),
                                   count: (assetId.lengthOfBytes(using: .utf8)))
            handler(assetIdData)
        }
    }
            
    func appIdentifierForURL(_ url: URL, completionHandler handler: @escaping (Data?) -> Void) {
        print(#function)
        let certUrl = URL(string: "http://fps.ezdrm.com/demo/video/eleisure.cer")!
        let session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
        let getDataTask = session.dataTask(with: certUrl) { data, response, error in
            if let error = error { print(error.localizedDescription) }

            guard let data = data
            else {
                session.invalidateAndCancel()
                return
            }
            
            handler(data)
            session.finishTasksAndInvalidate()
        }
        
        getDataTask.resume()
    }
    
    func contentKeyWithSPCData(_ spcData: Data, completionHandler handler: @escaping (Data?, Date?, String?) -> Void) {
        print(#function)
        let currentTime = NSTimeIntervalSince1970 * 1000
        let keyServerAddress = "http://fps.ezdrm.com/api/licenses/09cc0377-6dd4-40cb-b09d-b582236e70fe?p1=\(currentTime)"
        let ksmUrl = URL(string: keyServerAddress)!
        var request = URLRequest(url: ksmUrl)
        request.httpMethod = "POST"
        request.setValue("application/octet-stream", forHTTPHeaderField: "Content-type")
        request.httpBody = spcData
        
        let session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
        let postDataTask = session.dataTask(with: request) { data, response, error in
            if let error = error {print(error.localizedDescription)}
            
            guard let data = data
            else {
                session.invalidateAndCancel()
                return
            }
            
            handler(data, .distantFuture, "application/octet-stream")
        }
        
        postDataTask.resume()
    }
}

extension DRMContentDecryptionKeyDataSource: URLSessionDelegate {
    func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
        print(session.sessionDescription ?? #function)
    }
}
