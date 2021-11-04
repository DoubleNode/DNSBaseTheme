//
//  DNSThemeLabelStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeLabelStyle: DNSThemeStyle {
    public static var `default`: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.default
    static public func themeStyle(named name: String) -> DNSThemeStyle {
        return themeStyles[name] ?? DNSThemeLabelStyle.default
    }

    public var color: DNSUIColor
    public var font: DNSUIFont
    public var paragraphStyle: NSMutableParagraphStyle
    public var zeplinLineHeight: Double?
    
    public init(styleName: String? = nil,
                color: DNSUIColor = DNSUIColor(UIColor.Base.Label.text),
                font: DNSUIFont = DNSUIFont(UIFont.Base.label),
                paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle(),
                zeplinLineHeight: Double? = nil,
                shadow: DNSUIShadow = DNSUIShadow(),
                backgroundColor: DNSUIColor = DNSUIColor(UIColor.Base.Label.background),
                border: DNSUIBorder = DNSUIBorder(),
                tintColor: DNSUIColor = DNSUIColor(UIColor.Base.tint)) {
        self.color = color
        self.font = font
        self.paragraphStyle = paragraphStyle
        self.zeplinLineHeight = zeplinLineHeight
        super.init(styleName: styleName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
    }
}
public extension DNSThemeLabelStyle {
    enum Base {
        public static var `default` = DNSThemeLabelStyle()
    }
}
