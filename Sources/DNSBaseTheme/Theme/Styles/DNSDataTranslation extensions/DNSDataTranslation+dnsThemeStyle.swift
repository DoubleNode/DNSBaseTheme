//
//  DNSDataTranslation+dnsThemeStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsThemeStyle(from any: Any?) -> DNSThemeStyle? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsThemeStyle(from: any as? DNSDataDictionary)
        }
        return self.dnsThemeStyle(from: any as? DNSThemeStyle)
    }
    func dnsThemeStyle(from data: DNSDataDictionary?) -> DNSThemeStyle? {
        guard let data else { return nil }
        return DNSThemeStyle(from: data)
    }
    func dnsThemeStyle(from dnsThemeStyle: DNSThemeStyle?) -> DNSThemeStyle? {
        guard let dnsThemeStyle else { return nil }
        return dnsThemeStyle
    }
}
