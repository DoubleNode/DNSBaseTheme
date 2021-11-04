//
//  DNSThemeViewStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeViewStyle: DNSThemeStyle {
    public static var `default`: DNSThemeViewStyle = DNSThemeViewStyle.Base.default
    static public func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles["view_\(styleName)"] ?? DNSThemeViewStyle.default
    }

    override public init(styleName: String? = nil,
                         backgroundColor: DNSUIColor = DNSUIColor(UIColor.Base.background),
                         border: DNSUIBorder = DNSUIBorder(),
                         shadow: DNSUIShadow = DNSUIShadow(),
                         tintColor: DNSUIColor = DNSUIColor(UIColor.Base.tint)) {
        super.init(styleName: (styleName != nil) ? "view_\(styleName!)" : styleName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
    }
}
public extension DNSThemeViewStyle {
    enum Base {
        public static var `default` = DNSThemeViewStyle()
    }
}
