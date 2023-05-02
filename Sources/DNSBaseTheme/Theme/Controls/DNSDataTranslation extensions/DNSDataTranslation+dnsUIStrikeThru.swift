//
//  DNSDataTranslation+dnsUIStrikeThru.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsUIStrikeThru(from any: Any?) -> DNSUIStrikeThru? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsUIStrikeThru(from: any as? DNSDataDictionary)
        }
        return self.dnsUIStrikeThru(from: any as? DNSUIStrikeThru)
    }
    func dnsUIStrikeThru(from data: DNSDataDictionary?) -> DNSUIStrikeThru? {
        guard let data else { return nil }
        return DNSUIStrikeThru(from: data)
    }
    func dnsUIStrikeThru(from dnsUIStrikeThru: DNSUIStrikeThru?) -> DNSUIStrikeThru? {
        guard let dnsUIStrikeThru else { return nil }
        return dnsUIStrikeThru
    }
}
