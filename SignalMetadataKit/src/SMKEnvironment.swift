//
//  Copyright (c) 2020 Open Whisper Systems. All rights reserved.
//

import Foundation
import AxolotlKit // for SPKProtocolWriteContext

@objc
public protocol SMKAccountIdFinder {
    func accountId(forUuid uuid: UUID?, phoneNumber: String?, protocolContext: SPKProtocolWriteContext?) -> String?
}

@objc
public class SMKEnvironment: NSObject {

    @objc
    public static var shared: SMKEnvironment!

    public let accountIdFinder: SMKAccountIdFinder

    @objc
    public init(accountIdFinder: SMKAccountIdFinder) {
        self.accountIdFinder = accountIdFinder
    }
}
