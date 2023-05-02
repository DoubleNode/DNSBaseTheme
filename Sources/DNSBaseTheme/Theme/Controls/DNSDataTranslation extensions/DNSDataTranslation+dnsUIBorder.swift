//
//  DNSDataTranslation+dnsUIBorder.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsUIBorder(from any: Any?) -> DNSUIBorder? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsUIBorder(from: any as? DNSDataDictionary)
        }
        return self.dnsUIBorder(from: any as? DNSUIBorder)
    }
    func dnsUIBorder(from data: DNSDataDictionary?) -> DNSUIBorder? {
        guard let data else { return nil }
        return DNSUIBorder(from: data)
    }
    func dnsUIBorder(from dnsUIBorder: DNSUIBorder?) -> DNSUIBorder? {
        guard let dnsUIBorder else { return nil }
        return dnsUIBorder
    }
}
