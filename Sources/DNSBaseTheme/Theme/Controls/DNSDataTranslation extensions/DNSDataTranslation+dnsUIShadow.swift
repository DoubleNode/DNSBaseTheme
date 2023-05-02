//
//  DNSDataTranslation+dnsUIShadow.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsUIShadow(from any: Any?) -> DNSUIShadow? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsUIShadow(from: any as? DNSDataDictionary)
        }
        return self.dnsUIShadow(from: any as? DNSUIShadow)
    }
    func dnsUIShadow(from data: DNSDataDictionary?) -> DNSUIShadow? {
        guard let data else { return nil }
        return DNSUIShadow(from: data)
    }
    func dnsUIShadow(from dnsUIShadow: DNSUIShadow?) -> DNSUIShadow? {
        guard let dnsUIShadow else { return nil }
        return dnsUIShadow
    }
}
