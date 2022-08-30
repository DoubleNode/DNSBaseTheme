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
        self.alertColor = style.alertStyle.color.normal
        self.alertFont = style.alertStyle.font.normal
        self.counterColor = style.counterStyle.color.normal
        self.counterFont = style.counterStyle.font.normal
        self.highlightColor = style.textStyle.color.highlighted
        self.lineColor = style.lineColor.normal
        self.textColor = style.textStyle.color.normal
        self.textFont = style.textStyle.font.normal
        self.titleColor = style.titleStyle.color.normal
        self.titleFont = style.titleStyle.font.normal
    }
    mutating func updateForState(isEnabled: Bool,
                                 isFocused: Bool,
                                 isHighlighted: Bool,
                                 isSelected: Bool,
                                 using style: DNSThemeFieldStyle) {
        if isEnabled {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertStyle.color.normal
            self.alertFont = style.alertStyle.font.normal
            self.counterColor = style.counterStyle.color.normal
            self.counterFont = style.counterStyle.font.normal
            self.highlightColor = style.textStyle.color.highlighted
            self.lineColor = style.lineColor.normal
            self.textColor = style.textStyle.color.normal
            self.textFont = style.textStyle.font.normal
            self.titleColor = style.titleStyle.color.normal
            self.titleFont = style.titleStyle.font.normal
        } else {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertStyle.color.disabled
            self.alertFont = style.alertStyle.font.disabled
            self.counterColor = style.counterStyle.color.disabled
            self.counterFont = style.counterStyle.font.disabled
            self.highlightColor = style.textStyle.color.highlighted
            self.lineColor = style.lineColor.disabled
            self.textColor = style.textStyle.color.disabled
            self.textFont = style.textStyle.font.disabled
            self.titleColor = style.titleStyle.color.disabled
            self.titleFont = style.titleStyle.font.disabled
        }
        if isSelected {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertStyle.color.selected
            self.alertFont = style.alertStyle.font.selected
            self.counterColor = style.counterStyle.color.selected
            self.counterFont = style.counterStyle.font.selected
            self.highlightColor = style.textStyle.color.highlighted
            self.lineColor = style.lineColor.selected
            self.textColor = style.textStyle.color.selected
            self.textFont = style.textStyle.font.selected
            self.titleColor = style.titleStyle.color.selected
            self.titleFont = style.titleStyle.font.selected
        }
        if isHighlighted {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertStyle.color.highlighted
            self.alertFont = style.alertStyle.font.highlighted
            self.counterColor = style.counterStyle.color.highlighted
            self.counterFont = style.counterStyle.font.highlighted
            self.highlightColor = style.textStyle.color.highlighted
            self.lineColor = style.lineColor.highlighted
            self.textColor = style.textStyle.color.highlighted
            self.textFont = style.textStyle.font.highlighted
            self.titleColor = style.titleStyle.color.highlighted
            self.titleFont = style.titleStyle.font.highlighted
        }
        if isFocused {
            // DNSThemeStyle
            // DNSThemeFieldStyle
            self.alertColor = style.alertStyle.color.focused
            self.alertFont = style.alertStyle.font.focused
            self.counterColor = style.counterStyle.color.focused
            self.counterFont = style.counterStyle.font.focused
            self.highlightColor = style.textStyle.color.highlighted
            self.lineColor = style.lineColor.focused
            self.textColor = style.textStyle.color.focused
            self.textFont = style.textStyle.font.focused
            self.titleColor = style.titleStyle.color.focused
            self.titleFont = style.titleStyle.font.focused
        }
    }
}
