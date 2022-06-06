//
//  DNSThemeStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeStyle: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(backgroundColor)
        hasher.combine(border)
        hasher.combine(shadow)
        hasher.combine(tintColor)
    }
    public static func == (lhs: DNSThemeStyle, rhs: DNSThemeStyle) -> Bool {
        guard lhs.name == rhs.name else { return false }
        guard lhs.backgroundColor == rhs.backgroundColor else { return false }
        guard lhs.border == rhs.border else { return false }
        guard lhs.shadow == rhs.shadow else { return false }
        guard lhs.tintColor == rhs.tintColor else { return false }
        return true
    }
    
    public var name: String?
    public var backgroundColor: DNSUIColor
    public var border: DNSUIBorder
    public var shadow: DNSUIShadow
    public var tintColor: DNSUIColor
    
    public init(styleName: String?,
                backgroundColor: DNSUIColor = DNSUIColor(UIColor.Base.background),
                border: DNSUIBorder = DNSUIBorder(),
                shadow: DNSUIShadow = DNSUIShadow(),
                tintColor: DNSUIColor = DNSUIColor(UIColor.Base.tint)) {
        self.name = styleName
        self.backgroundColor = backgroundColor
        self.border = border
        self.shadow = shadow
        self.tintColor = tintColor
    }
}
