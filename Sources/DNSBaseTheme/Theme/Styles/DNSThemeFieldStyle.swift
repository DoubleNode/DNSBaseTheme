//
//  DNSThemeFieldStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import AnimatedField
import DNSCore
import DNSCoreThreading
import SFSymbol
import UIKit

open class DNSThemeFieldStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeFieldStyle] = [:]
    public static var `default`: DNSThemeFieldStyle = DNSThemeFieldStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeFieldStyle.default
    }
    public static var initThemesBlocks: [DNSBlock] = [
        DNSThemeFieldStyle.Base.createThemes,
    ]
    public static func initThemes(block: @escaping DNSBlock) {
        initThemesBlocks.append(block)
        initThemesBlocks.forEach { $0() }
    }

    public var alertStyle: DNSThemeLabelStyle
    public var counterStyle: DNSThemeLabelStyle
    public var textStyle: DNSThemeLabelStyle
    public var titleStyle: DNSThemeLabelStyle

    public var alertPosition: AnimatedFieldAlertPosition    // .top
    public var invalidCharacters: String    // "`^¨"
    public var lineColor: DNSUIColor    // UIColor.lightGray
    public var placeholderColor: DNSUIColor
    public var textFieldHeight: CGFloat // 36.0
    public var visibleOnImage: UIImage  // UIImage(dnsSystemSymbol: SFSymbol.eye)
    public var visibleOffImage: UIImage  // UIImage(dnsSystemSymbol: SFSymbol.eyeSlash)

    public var alertEnabled: DNSUIEnabled   // true
    public var alertFieldActive: DNSUIEnabled   // true
    public var alertLineActive: DNSUIEnabled    // true
    public var alertTitleActive: DNSUIEnabled   // true
    public var countDown: DNSUIEnabled   // false
    public var counterAnimation: DNSUIEnabled   // false
    public var counterEnabled: DNSUIEnabled   // false
    public var titleAlwaysVisible: DNSUIEnabled // false

    public init(styleName: String?,
                styleSetName: String? = "",
                alertStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.alert,
                counterStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.counter,
                textStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.text,
                titleStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.title,
                alertPosition: AnimatedFieldAlertPosition = .bottom,
                invalidCharacters: String = "`^¨",
                lineColor: DNSUIColor = DNSUIColor.Base.Field.line,
                placeholderColor: DNSUIColor = DNSUIColor.Base.Field.placeholder,
                textFieldHeight: CGFloat = 36.0,
                visibleOnImage: UIImage = UIImage(dnsSystemSymbol: SFSymbol.eye),
                visibleOffImage: UIImage = UIImage(dnsSystemSymbol: SFSymbol.eyeSlash),
                alertEnabled: DNSUIEnabled = DNSUIEnabled(true),
                alertFieldActive: DNSUIEnabled = DNSUIEnabled(true),
                alertLineActive: DNSUIEnabled = DNSUIEnabled(true),
                alertTitleActive: DNSUIEnabled = DNSUIEnabled(true),
                countDown: DNSUIEnabled = DNSUIEnabled(false),
                counterAnimation: DNSUIEnabled = DNSUIEnabled(false),
                counterEnabled: DNSUIEnabled = DNSUIEnabled(false),
                titleAlwaysVisible: DNSUIEnabled = DNSUIEnabled(false),
                backgroundColor: DNSUIColor = DNSUIColor.Base.Field.background,
                border: DNSUIBorder = DNSUIBorder.Base.field,
                shadow: DNSUIShadow = DNSUIShadow.Base.field,
                tintColor: DNSUIColor = DNSUIColor.Base.Field.tint) {
        self.alertStyle = alertStyle
        self.counterStyle = counterStyle
        self.textStyle = textStyle
        self.titleStyle = titleStyle
        self.alertPosition = alertPosition
        self.invalidCharacters = invalidCharacters
        self.lineColor = lineColor
        self.placeholderColor = placeholderColor
        self.textFieldHeight = textFieldHeight
        self.visibleOnImage = visibleOnImage
        self.visibleOffImage = visibleOffImage
        self.alertEnabled = alertEnabled
        self.alertFieldActive = alertFieldActive
        self.alertLineActive = alertLineActive
        self.alertTitleActive = alertTitleActive
        self.countDown = countDown
        self.counterAnimation = counterAnimation
        self.counterEnabled = counterEnabled
        self.titleAlwaysVisible = titleAlwaysVisible
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeFieldStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeFieldStyle.themeStyles[fullName] = self
        }
    }
}
