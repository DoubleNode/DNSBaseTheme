//
//  DNSDataTranslation+dnsThemeFieldStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2022 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsThemeFieldStyle(from any: Any?) -> DNSThemeFieldStyle? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsThemeFieldStyle(from: any as? DNSDataDictionary)
        }
        return self.dnsThemeFieldStyle(from: any as? DNSThemeFieldStyle)
    }
    func dnsThemeFieldStyle(from data: DNSDataDictionary?) -> DNSThemeFieldStyle? {
        guard let data else { return nil }
        var baseStyle = DNSThemeFieldStyle.default
        if let baseStyleName = self.string(from: data["_baseStyle"] as Any?) {
            // swiftlint:disable:next force_cast
            baseStyle = DNSThemeFieldStyle.themeStyle(named: baseStyleName) as! DNSThemeFieldStyle
        }
        let newStyle = DNSThemeFieldStyle(from: baseStyle)
        newStyle.setName = "Imported"
        newStyle.name = UUID().uuidString
        return newStyle.dao(from: data)
    }
    func dnsThemeFieldStyle(from dnsThemeFieldStyle: DNSThemeFieldStyle?) -> DNSThemeFieldStyle? {
        guard let dnsThemeFieldStyle else { return nil }
        return dnsThemeFieldStyle
    }
}
