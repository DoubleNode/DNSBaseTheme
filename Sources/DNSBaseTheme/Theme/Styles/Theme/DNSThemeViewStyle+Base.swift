//
//  DNSThemeViewStyle+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCoreThreading
import UIKit

public extension DNSThemeViewStyle {
    enum Base {
        public static func initThemes() {
            DNSThemeViewStyle.initThemes(block: createThemes)
        }
        public static let createThemes: DNSBlock = {
            _ = Self.default
        }
        public static var `default` = DNSThemeViewStyle(styleName: "default",
                                                        styleSetName: "Base")
    }
}
