//
//  DNSThemeStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeStyle {
    static public var themeStyles: [String: DNSThemeStyle] = [:]

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
        
        guard let name = self.name else { return }
        DNSThemeStyle.themeStyles[name] = self
    }
}
