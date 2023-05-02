//
//  DNSDataTranslation+dnsUIColor.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsUIColor(from any: Any?) -> DNSUIColor? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsUIColor(from: any as? DNSDataDictionary)
        }
        return self.dnsUIColor(from: any as? DNSUIColor)
    }
    func dnsUIColor(from data: DNSDataDictionary?) -> DNSUIColor? {
        guard let data else { return nil }
        return DNSUIColor(from: data)
    }
    func dnsUIColor(from dnsUIColor: DNSUIColor?) -> DNSUIColor? {
        guard let dnsUIColor else { return nil }
        return dnsUIColor
    }
}
