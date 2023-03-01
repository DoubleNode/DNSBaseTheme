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
        // DNSThemeStyle
        self.backgroundColor = style.backgroundColor.normal
        self.layer.borderColor = style.border.color.normal.cgColor
        self.layer.borderWidth = CGFloat(style.border.width)
        self.layer.cornerRadius = CGFloat(style.border.cornerRadius)
        self.layer.shadowColor = style.shadow.color.normal.cgColor
        self.layer.shadowOffset = style.shadow.offset
        self.layer.shadowOpacity = style.shadow.opacity
        self.layer.shadowRadius = style.shadow.radius
        self.isSkeletonable = style.skeletonable.normal
        self.tintColor = style.tintColor.normal
        // DNSThemeLabelStyle
        self.font = style.font.normal
        self.shadowColor = style.shadow.color.normal
        self.shadowOffset = style.shadow.offset
        self.textColor = style.color.normal
    }
}
