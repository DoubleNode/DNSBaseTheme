//
//  AnimatedField+dnsApplyTheme.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import AnimatedField
import Foundation
import SkeletonView

public extension AnimatedField {
    func dnsApply(_ style: DNSThemeFieldStyle) {
        super.dnsApply(style as DNSThemeStyle)
        // DNSThemeFieldStyle
        var newFormat = self.format
        newFormat.invalidCharacters = style.invalidCharacters
        newFormat.titleAlwaysVisible = style.titleAlwaysVisible.normal
        newFormat.titleFont = style.titleStyle.font.normal
        newFormat.textFont = style.textStyle.font.normal
        newFormat.counterFont = style.counterStyle.font.normal
        newFormat.lineColor = style.lineColor.normal
        newFormat.pickerTextColor = style.pickerTextColor.normal
        newFormat.titleColor = style.titleStyle.color.normal
        newFormat.textColor = style.textStyle.color.normal
        newFormat.counterColor = style.counterStyle.color.normal
        newFormat.alertEnabled = style.alertEnabled.normal
        newFormat.alertFont = style.alertStyle.font.normal
        newFormat.alertColor = style.alertStyle.color.normal
        newFormat.alertFieldActive = style.alertFieldActive.normal
        newFormat.alertLineActive = style.alertLineActive.normal
        newFormat.alertTitleActive = style.alertTitleActive.normal
        newFormat.alertPosition = style.alertPosition
        newFormat.visibleOnImage = style.visibleOnImage
        newFormat.visibleOffImage = style.visibleOffImage
        newFormat.counterEnabled = style.counterEnabled.normal
        newFormat.countDown = style.countDown.normal
        newFormat.counterAnimation = style.counterAnimation.normal
        newFormat.highlightColor = style.textStyle.color.highlighted
        newFormat.placeholderColor = style.placeholderColor.normal
        newFormat.textFieldHeight = style.textFieldHeight
        self.format = newFormat
    }
    func updateForState(using style: DNSThemeStyle) {
        if self.isEnabled {
            // DNSThemeStyle
            self.backgroundColor = style.backgroundColor.normal
            self.layer.borderColor = style.border.color.normal.cgColor
            self.layer.shadowColor = style.shadow.color.normal.cgColor
            self.isSkeletonable = style.skeletonable.normal
            self.tintColor = style.tintColor.normal
        } else {
            // DNSThemeStyle
            self.backgroundColor = style.backgroundColor.disabled
            self.layer.borderColor = style.border.color.disabled.cgColor
            self.layer.shadowColor = style.shadow.color.disabled.cgColor
            self.isSkeletonable = style.skeletonable.disabled
            self.tintColor = style.tintColor.disabled
        }
        if self.isSelected {
            // DNSThemeStyle
            self.backgroundColor = style.backgroundColor.selected
            self.layer.borderColor = style.border.color.selected.cgColor
            self.layer.shadowColor = style.shadow.color.selected.cgColor
            self.isSkeletonable = style.skeletonable.selected
            self.tintColor = style.tintColor.selected
        }
        if self.isHighlighted {
            // DNSThemeStyle
            self.backgroundColor = style.backgroundColor.highlighted
            self.layer.borderColor = style.border.color.highlighted.cgColor
            self.layer.shadowColor = style.shadow.color.highlighted.cgColor
            self.isSkeletonable = style.skeletonable.highlighted
            self.tintColor = style.tintColor.highlighted
        }
        if self.isFocused {
            // DNSThemeStyle
            self.backgroundColor = style.backgroundColor.focused
            self.layer.borderColor = style.border.color.focused.cgColor
            self.layer.shadowColor = style.shadow.color.focused.cgColor
            self.isSkeletonable = style.skeletonable.focused
            self.tintColor = style.tintColor.focused
        }
    }
    func updateForState(using style: DNSThemeFieldStyle) {
        self.updateForState(using: style as DNSThemeStyle)
        var newFormat = self.format
        newFormat.invalidCharacters = style.invalidCharacters
        newFormat.alertPosition = style.alertPosition
        newFormat.visibleOnImage = style.visibleOnImage
        newFormat.visibleOffImage = style.visibleOffImage
        newFormat.highlightColor = style.textStyle.color.highlighted
        newFormat.placeholderColor = style.placeholderColor.normal
        newFormat.textFieldHeight = style.textFieldHeight
        if self.isEnabled {
            // DNSThemeFieldStyle
            newFormat.titleAlwaysVisible = style.titleAlwaysVisible.normal
            newFormat.titleFont = style.titleStyle.font.normal
            newFormat.textFont = style.textStyle.font.normal
            newFormat.counterFont = style.counterStyle.font.normal
            newFormat.lineColor = style.lineColor.normal
            newFormat.pickerTextColor = style.pickerTextColor.normal
            newFormat.titleColor = style.titleStyle.color.normal
            newFormat.textColor = style.textStyle.color.normal
            newFormat.counterColor = style.counterStyle.color.normal
            newFormat.alertEnabled = style.alertEnabled.normal
            newFormat.alertFont = style.alertStyle.font.normal
            newFormat.alertColor = style.alertStyle.color.normal
            newFormat.alertFieldActive = style.alertFieldActive.normal
            newFormat.alertLineActive = style.alertLineActive.normal
            newFormat.alertTitleActive = style.alertTitleActive.normal
            newFormat.counterEnabled = style.counterEnabled.normal
            newFormat.countDown = style.countDown.normal
            newFormat.counterAnimation = style.counterAnimation.normal
        } else {
            // DNSThemeFieldStyle
            newFormat.titleAlwaysVisible = style.titleAlwaysVisible.disabled
            newFormat.titleFont = style.titleStyle.font.disabled
            newFormat.textFont = style.textStyle.font.disabled
            newFormat.counterFont = style.counterStyle.font.disabled
            newFormat.lineColor = style.lineColor.disabled
            newFormat.pickerTextColor = style.pickerTextColor.disabled
            newFormat.titleColor = style.titleStyle.color.disabled
            newFormat.textColor = style.textStyle.color.disabled
            newFormat.counterColor = style.counterStyle.color.disabled
            newFormat.alertEnabled = style.alertEnabled.disabled
            newFormat.alertFont = style.alertStyle.font.disabled
            newFormat.alertColor = style.alertStyle.color.disabled
            newFormat.alertFieldActive = style.alertFieldActive.disabled
            newFormat.alertLineActive = style.alertLineActive.disabled
            newFormat.alertTitleActive = style.alertTitleActive.disabled
            newFormat.counterEnabled = style.counterEnabled.disabled
            newFormat.countDown = style.countDown.disabled
            newFormat.counterAnimation = style.counterAnimation.disabled
        }
        if self.isSelected {
            // DNSThemeFieldStyle
            newFormat.titleAlwaysVisible = style.titleAlwaysVisible.selected
            newFormat.titleFont = style.titleStyle.font.selected
            newFormat.textFont = style.textStyle.font.selected
            newFormat.counterFont = style.counterStyle.font.selected
            newFormat.lineColor = style.lineColor.selected
            newFormat.pickerTextColor = style.pickerTextColor.selected
            newFormat.titleColor = style.titleStyle.color.selected
            newFormat.textColor = style.textStyle.color.selected
            newFormat.counterColor = style.counterStyle.color.selected
            newFormat.alertEnabled = style.alertEnabled.selected
            newFormat.alertFont = style.alertStyle.font.selected
            newFormat.alertColor = style.alertStyle.color.selected
            newFormat.alertFieldActive = style.alertFieldActive.selected
            newFormat.alertLineActive = style.alertLineActive.selected
            newFormat.alertTitleActive = style.alertTitleActive.selected
            newFormat.counterEnabled = style.counterEnabled.selected
            newFormat.countDown = style.countDown.selected
            newFormat.counterAnimation = style.counterAnimation.selected
        }
        if self.isHighlighted {
            // DNSThemeFieldStyle
            newFormat.titleAlwaysVisible = style.titleAlwaysVisible.highlighted
            newFormat.titleFont = style.titleStyle.font.highlighted
            newFormat.textFont = style.textStyle.font.highlighted
            newFormat.counterFont = style.counterStyle.font.highlighted
            newFormat.lineColor = style.lineColor.highlighted
            newFormat.pickerTextColor = style.pickerTextColor.highlighted
            newFormat.titleColor = style.titleStyle.color.highlighted
            newFormat.textColor = style.textStyle.color.highlighted
            newFormat.counterColor = style.counterStyle.color.highlighted
            newFormat.alertEnabled = style.alertEnabled.highlighted
            newFormat.alertFont = style.alertStyle.font.highlighted
            newFormat.alertColor = style.alertStyle.color.highlighted
            newFormat.alertFieldActive = style.alertFieldActive.highlighted
            newFormat.alertLineActive = style.alertLineActive.highlighted
            newFormat.alertTitleActive = style.alertTitleActive.highlighted
            newFormat.counterEnabled = style.counterEnabled.highlighted
            newFormat.countDown = style.countDown.highlighted
            newFormat.counterAnimation = style.counterAnimation.highlighted
        }
        if self.isFocused {
            // DNSThemeFieldStyle
            newFormat.titleAlwaysVisible = style.titleAlwaysVisible.focused
            newFormat.titleFont = style.titleStyle.font.focused
            newFormat.textFont = style.textStyle.font.focused
            newFormat.counterFont = style.counterStyle.font.focused
            newFormat.lineColor = style.lineColor.focused
            newFormat.pickerTextColor = style.pickerTextColor.focused
            newFormat.titleColor = style.titleStyle.color.focused
            newFormat.textColor = style.textStyle.color.focused
            newFormat.counterColor = style.counterStyle.color.focused
            newFormat.alertEnabled = style.alertEnabled.focused
            newFormat.alertFont = style.alertStyle.font.focused
            newFormat.alertColor = style.alertStyle.color.focused
            newFormat.alertFieldActive = style.alertFieldActive.focused
            newFormat.alertLineActive = style.alertLineActive.focused
            newFormat.alertTitleActive = style.alertTitleActive.focused
            newFormat.counterEnabled = style.counterEnabled.focused
            newFormat.countDown = style.countDown.focused
            newFormat.counterAnimation = style.counterAnimation.focused
        }
        self.format = newFormat
    }
}
