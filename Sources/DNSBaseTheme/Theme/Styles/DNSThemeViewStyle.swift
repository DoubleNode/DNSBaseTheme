//
//  DNSThemeViewStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeViewStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeViewStyle] = [:]
    public static var `default`: DNSThemeViewStyle = DNSThemeViewStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeViewStyle.default
    }

    override public init(styleName: String?,
                         styleDescription: String? = "",
                         backgroundColor: DNSUIColor = DNSUIColor(UIColor.Base.background),
                         border: DNSUIBorder = DNSUIBorder(),
                         shadow: DNSUIShadow = DNSUIShadow(),
                         tintColor: DNSUIColor = DNSUIColor(UIColor.Base.tint)) {
        super.init(styleName: styleName,
                   styleDescription: styleDescription,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
        guard let name = self.name else { return }
        DNSThemeViewStyle.themeStyles[name] = self
    }
}
public extension DNSThemeViewStyle {
    enum Base {
        public static var `default` = DNSThemeViewStyle(styleName: "default",
                                                        styleDescription: "Base.default")
    }
}
