//
//  DNSDataTranslation+dnsUIFont.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsUIFont(from any: Any?) -> DNSUIFont? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsUIFont(from: any as? DNSDataDictionary)
        }
        return self.dnsUIFont(from: any as? DNSUIFont)
    }
    func dnsUIFont(from data: DNSDataDictionary?) -> DNSUIFont? {
        guard let data else { return nil }
        return DNSUIFont(from: data)
    }
    func dnsUIFont(from dnsUIFont: DNSUIFont?) -> DNSUIFont? {
        guard let dnsUIFont else { return nil }
        return dnsUIFont
    }
}
