//
//  PlayerStateManagerDouble.swift
//  BitmovinConvivaAnalytics_Example
//
//  Created by David Steinacher on 08.10.18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import ConvivaSDK

class PlayerStateManagerDouble: NSObject, CISPlayerStateManagerProtocol, DoubleDataSource {
    override func doesNotRecognizeSelector(_ aSelector: Selector!) {
        // be aware that all method calls that are not existing will silently fail
        print("[ PlayerStateManagerDouble ] method_missing: \(NSStringFromSelector(aSelector))")
    }

    func setPlayerState(_ newState: PlayerState) {
        spy(functionName: "setPlayerState", args: ["newState": "\(newState.rawValue)"])
    }

    func setBitrateKbps(_ newBitrateKbps: Int) {
        spy(functionName: "setBitrateKbps", args: ["newBitrateKbps": "\(newBitrateKbps)"])
    }

    func setSeekStart(_ seekToPosition: Int64) {
        spy(functionName: "setSeekStart", args: ["seekToPosition": "\(seekToPosition)"])
    }

    func setSeekEnd(_ seekPosition: Int64) {
        spy(functionName: "setSeekEnd", args: ["seekPosition": "\(seekPosition)"])
    }
}
