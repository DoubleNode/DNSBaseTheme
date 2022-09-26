//
//  DNSThemeViewStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import DNSCoreThreading
import UIKit

open class DNSThemeViewStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeViewStyle] = [:]
    public static var `default`: DNSThemeViewStyle = DNSThemeViewStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeViewStyle.default
    }
    public static var initThemesBlocks: [DNSBlock] = [
        DNSThemeViewStyle.Base.createThemes,
    ]
    public static func initThemes(block: @escaping DNSBlock) {
        initThemesBlocks.append(block)
        initThemesBlocks.forEach { $0() }
    }

    override public init(styleName: String?,
                         styleSetName: String? = "",
                         backgroundColor: DNSUIColor = DNSUIColor(UIColor.Base.background),
                         border: DNSUIBorder = DNSUIBorder(),
                         shadow: DNSUIShadow = DNSUIShadow(),
                         tintColor: DNSUIColor = DNSUIColor(UIColor.Base.tint)) {
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeViewStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeViewStyle.themeStyles[fullName] = self
        }
    }
}
