//
//  DNSThemeLabelStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
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
    public var strikeThru: DNSUIStrikeThru
    public var zeplinLineHeight: Double?
    
    public init(styleName: String?,
                styleSetName: String? = "",
                color: DNSUIColor = DNSUIColor.Base.Label.text,
                font: DNSUIFont = DNSUIFont.Base.label,
                paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle(),
                strikeThru: DNSUIStrikeThru = DNSUIStrikeThru.Base.Label.strikeThru,
                zeplinLineHeight: Double? = nil,
                shadow: DNSUIShadow = DNSUIShadow.Base.Label.text,
                backgroundColor: DNSUIColor = DNSUIColor.Base.Label.background,
                border: DNSUIBorder = DNSUIBorder.Base.label,
                tintColor: DNSUIColor = DNSUIColor.Base.Label.tint) {
        self.color = color
        self.font = font
        self.paragraphStyle = paragraphStyle
        self.strikeThru = strikeThru
        self.zeplinLineHeight = zeplinLineHeight
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeLabelStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeLabelStyle.themeStyles[fullName] = self
        }
    }
}
