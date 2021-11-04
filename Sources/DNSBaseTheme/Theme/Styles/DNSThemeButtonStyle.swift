//
//  DNSThemeButtonStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeButtonStyle: DNSThemeStyle {
    public static var `default`: DNSThemeButtonStyle = DNSThemeButtonStyle.Base.default
    static public func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles["button_\(styleName)"] ?? DNSThemeButtonStyle.default
    }

    public var subtitleColor: DNSUIColor
    public var subtitleFont: DNSUIFont
    public var subtitleShadow: DNSUIShadow
    public var titleColor: DNSUIColor
    public var titleFont: DNSUIFont
    public var titleShadow: DNSUIShadow

    public init(styleName: String? = nil,
                titleColor: DNSUIColor = DNSUIColor.Base.Button.title,
                titleFont: DNSUIFont = DNSUIFont.Base.Button.title,
                titleShadow: DNSUIShadow = DNSUIShadow.Base.Button.title,
                subtitleColor: DNSUIColor = DNSUIColor.Base.Button.subtitle,
                subtitleFont: DNSUIFont = DNSUIFont.Base.Button.subtitle,
                subtitleShadow: DNSUIShadow = DNSUIShadow.Base.Button.subtitle,
                backgroundColor: DNSUIColor = DNSUIColor.Base.Button.background,
                border: DNSUIBorder = DNSUIBorder.Base.button,
                shadow: DNSUIShadow = DNSUIShadow.Base.button,
                tintColor: DNSUIColor = DNSUIColor.Base.Button.tint) {
        self.subtitleColor = subtitleColor
        self.subtitleFont = subtitleFont
        self.subtitleShadow = subtitleShadow
        self.titleColor = titleColor
        self.titleFont = titleFont
        self.titleShadow = titleShadow
        super.init(styleName: (styleName != nil) ? "button_\(styleName!)" : styleName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
    }
}
public extension DNSThemeButtonStyle {
    enum Base {
        public static var `default` = DNSThemeButtonStyle()
    }
}
