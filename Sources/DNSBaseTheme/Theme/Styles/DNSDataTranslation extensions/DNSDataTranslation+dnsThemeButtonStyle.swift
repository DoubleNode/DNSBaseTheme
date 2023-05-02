//
//  DNSDataTranslation+dnsThemeButtonStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsThemeButtonStyle(from any: Any?) -> DNSThemeButtonStyle? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsThemeButtonStyle(from: any as? DNSDataDictionary)
        }
        return self.dnsThemeButtonStyle(from: any as? DNSThemeButtonStyle)
    }
    func dnsThemeButtonStyle(from data: DNSDataDictionary?) -> DNSThemeButtonStyle? {
        guard let data else { return nil }
        return DNSThemeButtonStyle(from: data)
    }
    func dnsThemeButtonStyle(from dnsThemeButtonStyle: DNSThemeButtonStyle?) -> DNSThemeButtonStyle? {
        guard let dnsThemeButtonStyle else { return nil }
        return dnsThemeButtonStyle
    }
}
