//
//  DNSDataTranslation+dnsUIEnabled.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsUIEnabled(from any: Any?) -> DNSUIEnabled? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsUIEnabled(from: any as? DNSDataDictionary)
        }
        return self.dnsUIEnabled(from: any as? DNSUIEnabled)
    }
    func dnsUIEnabled(from data: DNSDataDictionary?) -> DNSUIEnabled? {
        guard let data else { return nil }
        return DNSUIEnabled(from: data)
    }
    func dnsUIEnabled(from dnsUIEnabled: DNSUIEnabled?) -> DNSUIEnabled? {
        guard let dnsUIEnabled else { return nil }
        return dnsUIEnabled
    }
}
