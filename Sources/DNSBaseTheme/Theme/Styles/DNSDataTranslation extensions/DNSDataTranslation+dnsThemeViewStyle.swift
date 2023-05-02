//
//  DNSDataTranslation+dnsThemeViewStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsThemeViewStyle(from any: Any?) -> DNSThemeViewStyle? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsThemeViewStyle(from: any as? DNSDataDictionary)
        }
        return self.dnsThemeViewStyle(from: any as? DNSThemeViewStyle)
    }
    func dnsThemeViewStyle(from data: DNSDataDictionary?) -> DNSThemeViewStyle? {
        guard let data else { return nil }
        var baseStyle = DNSThemeViewStyle.default
        if let baseStyleName = self.string(from: data["_baseStyle"] as Any?) {
            // swiftlint:disable:next force_cast
            baseStyle = DNSThemeViewStyle.themeStyle(named: baseStyleName) as! DNSThemeViewStyle
        }
        return DNSThemeViewStyle(from: baseStyle).dao(from: data)
    }
    func dnsThemeViewStyle(from dnsThemeViewStyle: DNSThemeViewStyle?) -> DNSThemeViewStyle? {
        guard let dnsThemeViewStyle else { return nil }
        return dnsThemeViewStyle
    }
}
