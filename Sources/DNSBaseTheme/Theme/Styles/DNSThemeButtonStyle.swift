//
//  DNSThemeButtonStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import DNSCoreThreading
import UIKit

open class DNSThemeButtonStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeButtonStyle] = [:]
    public static var `default`: DNSThemeButtonStyle = DNSThemeButtonStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeButtonStyle.default
    }
    public static var initThemesBlocks: [DNSBlock] = [
        DNSThemeButtonStyle.Base.createThemes,
    ]
    public static func initThemes(block: @escaping DNSBlock) {
        initThemesBlocks.append(block)
        initThemesBlocks.forEach { $0() }
    }

    public var subtitleStyle: DNSThemeLabelStyle
    public var titleStyle: DNSThemeLabelStyle

    public init(styleName: String?,
                styleSetName: String? = "",
                titleStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Button.title,
                subtitleStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Button.subtitle,
                backgroundColor: DNSUIColor = DNSUIColor.Base.Button.background,
                border: DNSUIBorder = DNSUIBorder.Base.button,
                shadow: DNSUIShadow = DNSUIShadow.Base.button,
                tintColor: DNSUIColor = DNSUIColor.Base.Button.tint) {
        self.titleStyle = titleStyle
        self.subtitleStyle = subtitleStyle
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeButtonStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeButtonStyle.themeStyles[fullName] = self
        }
    }
}
