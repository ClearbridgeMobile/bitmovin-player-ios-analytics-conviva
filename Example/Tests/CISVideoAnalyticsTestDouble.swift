//
//  CISVideoAnalyticsTestDouble.swift
//  BitmovinConvivaAnalytics_Tests
//
//  Created by Eyevinn on 27/05/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import ConvivaSDK

class CISVideoAnalyticsTestDouble: NSObject, CISVideoAnalyticsProtocol, TestDoubleDataSource {
    func setContentInfo(_ contentInfo: [AnyHashable: Any]) {
        spy(functionName: "setContentInfo", args: ["contentInfo": "\(String(describing: contentInfo))"])
    }

    func setPlayerInfo(_ playerInfo: [AnyHashable: Any]) {
        spy(functionName: "setPlayerInfo", args: ["playerInfo": "\(String(describing: playerInfo))"])
    }

    func reportPlaybackRequested(_ contentInfo: [AnyHashable: Any]?) {
        spy(functionName: "reportPlaybackRequested", args: ["contentInfo": "\(String(describing: contentInfo))"])
    }

    func reportPlaybackEnded() {
        spy(functionName: "reportPlaybackEnded")
    }

    func reportPlaybackFailed(_ errorMessage: String, contentInfo: [AnyHashable: Any]?) {
    }

    func reportPlaybackError(_ errorMessage: String, errorSeverity severity: ErrorSeverity) {
    }

    func reportPlaybackEvent(_ eventName: String, withAttributes attributes: [AnyHashable: Any]? = nil) {
    }

    func reportAdBreakStarted(_ adPlayer: AdPlayer, adType: AdTechnology, adBreakInfo: [AnyHashable: Any]) {
    }

    func reportAdBreakEnded() {
    }

    func setPlayer(_ player: Any?) {
    }

    func reportPlaybackMetric(_ key: String, value: Any?) {
        spy(functionName: "reportPlaybackMetric", args: ["value": "\(String(describing: value))"])
    }

    func setAdAnalytics(_ adAnalytics: CISAdAnalytics) {
    }

    func report(_ playerState: PlayerState) {
    }

    func getSessionId() -> Int32 {
        return 1
    }

    func getSessionKey() -> Int32 {
        return 1
    }

    func getMetadataInfo() -> [AnyHashable: Any] {
        return [AnyHashable: Any]()
    }

    func setUpdateHandler(_ updateHandler: @escaping UpdateHandler) {
    }

    func isAdAnalytics() -> Bool {
        return false
    }

    func isVideoAnalytics() -> Bool {
        return true
    }

    func cleanup() {
    }
}
