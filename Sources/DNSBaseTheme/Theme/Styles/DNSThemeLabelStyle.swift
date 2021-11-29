//
//  DNSThemeLabelStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeLabelStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeLabelStyle] = [:]
    public static var `default`: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeLabelStyle.default
    }

    public var color: DNSUIColor
    public var font: DNSUIFont
    public var paragraphStyle: NSMutableParagraphStyle
    public var strikeThru: Bool
    public var strikeThruColor: DNSUIColor
    public var strikeThruStyle: NSUnderlineStyle
    public var zeplinLineHeight: Double?
    
    public init(styleName: String? = nil,
                color: DNSUIColor = DNSUIColor(UIColor.Base.Label.text),
                font: DNSUIFont = DNSUIFont(UIFont.Base.label),
                paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle(),
                strikeThru: Bool = false,
                strikeThruColor: DNSUIColor = DNSUIColor(UIColor.Base.Label.strikeThru),
                strikeThruStyle: NSUnderlineStyle = NSUnderlineStyle.single,
                zeplinLineHeight: Double? = nil,
                shadow: DNSUIShadow = DNSUIShadow(),
                backgroundColor: DNSUIColor = DNSUIColor(UIColor.Base.Label.background),
                border: DNSUIBorder = DNSUIBorder(),
                tintColor: DNSUIColor = DNSUIColor(UIColor.Base.tint)) {
        self.color = color
        self.font = font
        self.paragraphStyle = paragraphStyle
        self.strikeThru = strikeThru
        self.strikeThruColor = strikeThruColor
        self.strikeThruStyle = strikeThruStyle
        self.zeplinLineHeight = zeplinLineHeight
        super.init(styleName: styleName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
        guard let name = self.name else { return }
        DNSThemeLabelStyle.themeStyles[name] = self
    }
}
public extension DNSThemeLabelStyle {
    enum Base {
        public static var `default` = DNSThemeLabelStyle()
    }
}
