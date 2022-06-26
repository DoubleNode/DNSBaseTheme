//
//  AnimatedFieldFormat+dnsApplyTheme.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import AnimatedField
import Foundation

public extension AnimatedFieldFormat {
    mutating func dnsApply(_ style: DNSThemeFieldStyle) {
        // DNSThemeStyle
        // DNSThemeFieldStyle
        self.alertColor = style.alertColor.normal
        self.alertFont = style.alertFont.normal
        self.counterColor = style.counterColor.normal
        self.counterFont = style.counterFont.normal
        self.highlightColor = style.highlightColor.normal
        self.lineColor = style.lineColor.normal
        self.textColor = style.textColor.normal
        self.textFont = style.textFont.normal
        self.titleColor = style.titleColor.normal
        self.titleFont = style.titleFont.normal
    }
    mutating func updateForState(isEnabled: Bool,
                                 isFocused: Bool,
                                 isHighlighted: Bool,
                                 isSelected: Bool,
                                 using style: DNSThemeFieldStyle) {
        if isEnabled {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertColor.normal
            self.alertFont = style.alertFont.normal
            self.counterColor = style.counterColor.normal
            self.counterFont = style.counterFont.normal
            self.highlightColor = style.highlightColor.normal
            self.lineColor = style.lineColor.normal
            self.textColor = style.textColor.normal
            self.textFont = style.textFont.normal
            self.titleColor = style.titleColor.normal
            self.titleFont = style.titleFont.normal
        } else {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertColor.disabled
            self.alertFont = style.alertFont.disabled
            self.counterColor = style.counterColor.disabled
            self.counterFont = style.counterFont.disabled
            self.highlightColor = style.highlightColor.disabled
            self.lineColor = style.lineColor.disabled
            self.textColor = style.textColor.disabled
            self.textFont = style.textFont.disabled
            self.titleColor = style.titleColor.disabled
            self.titleFont = style.titleFont.disabled
        }
        if isSelected {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertColor.selected
            self.alertFont = style.alertFont.selected
            self.counterColor = style.counterColor.selected
            self.counterFont = style.counterFont.selected
            self.highlightColor = style.highlightColor.selected
            self.lineColor = style.lineColor.selected
            self.textColor = style.textColor.selected
            self.textFont = style.textFont.selected
            self.titleColor = style.titleColor.selected
            self.titleFont = style.titleFont.selected
        }
        if isHighlighted {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertColor.highlighted
            self.alertFont = style.alertFont.highlighted
            self.counterColor = style.counterColor.highlighted
            self.counterFont = style.counterFont.highlighted
            self.highlightColor = style.highlightColor.highlighted
            self.lineColor = style.lineColor.highlighted
            self.textColor = style.textColor.highlighted
            self.textFont = style.textFont.highlighted
            self.titleColor = style.titleColor.highlighted
            self.titleFont = style.titleFont.highlighted
        }
        if isFocused {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertColor.focused
            self.alertFont = style.alertFont.focused
            self.counterColor = style.counterColor.focused
            self.counterFont = style.counterFont.focused
            self.highlightColor = style.highlightColor.focused
            self.lineColor = style.lineColor.focused
            self.textColor = style.textColor.focused
            self.textFont = style.textFont.focused
            self.titleColor = style.titleColor.focused
            self.titleFont = style.titleFont.focused
        }
    }
}
