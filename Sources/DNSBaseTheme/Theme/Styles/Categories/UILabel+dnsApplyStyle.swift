//
//  UILabel+dnsApplyStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import SkeletonView
import UIKit

public extension UILabel {
    func dnsApply(_ style: DNSThemeLabelStyle) {
        super.dnsApply(style as DNSThemeStyle)
        // DNSThemeLabelStyle
        self.font = style.font.normal
        self.shadowColor = style.shadow.color.normal
        self.shadowOffset = style.shadow.offset
        self.textColor = style.color.normal
    }
}
