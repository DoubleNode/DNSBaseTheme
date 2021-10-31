//
//  DNSThemeLabelStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeLabelStyle: DNSThemeViewStyle {
    public var color: DNSUIColor
    public var font: DNSUIFont
    public var paragraphStyle: NSMutableParagraphStyle
    
    public init(color: DNSUIColor = DNSUIColor(UIColor.Base.label),
                font: DNSUIFont = DNSUIFont(UIFont.Base.label),
                paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle(),
                shadow: DNSUIShadow = DNSUIShadow(),
                backgroundColor: DNSUIColor = DNSUIColor(UIColor.Base.background),
                border: DNSUIBorder = DNSUIBorder(),
                tintColor: DNSUIColor = DNSUIColor(UIColor.Base.tint)) {
        self.color = color
        self.font = font
        self.paragraphStyle = paragraphStyle
        super.init(backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
    }
}
