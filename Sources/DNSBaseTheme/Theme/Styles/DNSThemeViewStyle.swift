//
//  DNSThemeViewStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeViewStyle: DNSThemeStyle {
    override public init(backgroundColor: DNSUIColor = DNSUIColor(UIColor.Base.background),
                         border: DNSUIBorder = DNSUIBorder(),
                         shadow: DNSUIShadow = DNSUIShadow(),
                         tintColor: DNSUIColor = DNSUIColor(UIColor.Base.tint)) {
        super.init(backgroundColor: backgroundColor,
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
