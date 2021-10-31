//
//  UIButton+dnsApplyTheme.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

public extension UIButton {
    func dnsApply(_ style: DNSThemeButtonStyle) {
        // DNSThemeStyle
        self.backgroundColor = style.backgroundColor.normal
        self.layer.borderColor = style.border.color.normal.cgColor
        self.layer.borderWidth = CGFloat(style.border.width)
        self.layer.cornerRadius = CGFloat(style.border.cornerRadius)
        self.layer.shadowColor = style.shadow.color.normal.cgColor
        self.layer.shadowOffset = style.shadow.offset
        self.layer.shadowOpacity = style.shadow.opacity
        self.layer.shadowRadius = style.shadow.radius
        self.tintColor = style.tintColor.normal
        // DNSThemeButtonStyle
        self.setTitleColor(style.titleColor.normal, for: UIControl.State.normal)
        self.setTitleColor(style.titleColor.disabled, for: UIControl.State.disabled)
        self.setTitleColor(style.titleColor.focused, for: UIControl.State.focused)
        self.setTitleColor(style.titleColor.highlighted, for: UIControl.State.highlighted)
        self.setTitleColor(style.titleColor.selected, for: UIControl.State.selected)
        self.setTitleShadowColor(style.titleShadow.color.normal, for: UIControl.State.normal)
        self.setTitleShadowColor(style.titleShadow.color.disabled, for: UIControl.State.disabled)
        self.setTitleShadowColor(style.titleShadow.color.focused, for: UIControl.State.focused)
        self.setTitleShadowColor(style.titleShadow.color.highlighted, for: UIControl.State.highlighted)
        self.setTitleShadowColor(style.titleShadow.color.selected, for: UIControl.State.selected)
        self.updateForState(using: style)
    }
    func updateForState(using style: DNSThemeButtonStyle) {
        if self.isEnabled {
            if #available(iOS 15.0, *) {
                self.subtitleLabel?.textColor = style.subtitleColor.normal
                self.subtitleLabel?.font = style.subtitleFont.normal
                self.subtitleLabel?.shadowColor = style.subtitleShadow.color.normal
                self.subtitleLabel?.shadowOffset = style.subtitleShadow.offset
            }
            self.titleLabel?.font = style.titleFont.normal
        } else {
            if #available(iOS 15.0, *) {
                self.subtitleLabel?.textColor = style.subtitleColor.disabled
                self.subtitleLabel?.font = style.subtitleFont.disabled
                self.subtitleLabel?.shadowColor = style.subtitleShadow.color.disabled
                self.subtitleLabel?.shadowOffset = style.subtitleShadow.offset
            }
            self.titleLabel?.font = style.titleFont.disabled
        }
        if self.isSelected {
            if #available(iOS 15.0, *) {
                self.subtitleLabel?.textColor = style.subtitleColor.selected
                self.subtitleLabel?.font = style.subtitleFont.selected
                self.subtitleLabel?.shadowColor = style.subtitleShadow.color.selected
                self.subtitleLabel?.shadowOffset = style.subtitleShadow.offset
            }
            self.titleLabel?.font = style.titleFont.selected
        }
        if self.isHighlighted {
            if #available(iOS 15.0, *) {
                self.subtitleLabel?.textColor = style.subtitleColor.highlighted
                self.subtitleLabel?.font = style.subtitleFont.highlighted
                self.subtitleLabel?.shadowColor = style.subtitleShadow.color.highlighted
                self.subtitleLabel?.shadowOffset = style.subtitleShadow.offset
            }
            self.titleLabel?.font = style.titleFont.highlighted
        }
        if self.isFocused {
            if #available(iOS 15.0, *) {
                self.subtitleLabel?.textColor = style.subtitleColor.focused
                self.subtitleLabel?.font = style.subtitleFont.focused
                self.subtitleLabel?.shadowColor = style.subtitleShadow.color.focused
                self.subtitleLabel?.shadowOffset = style.subtitleShadow.offset
            }
            self.titleLabel?.font = style.titleFont.focused
        }
    }
}
