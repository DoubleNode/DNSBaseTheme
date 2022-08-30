//
//  DNSThemeFieldStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

open class DNSThemeFieldStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeFieldStyle] = [:]
    public static var `default`: DNSThemeFieldStyle = DNSThemeFieldStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeFieldStyle.default
    }

    public var alertStyle: DNSThemeLabelStyle
    public var counterStyle: DNSThemeLabelStyle
    public var lineColor: DNSUIColor
    public var textStyle: DNSThemeLabelStyle
    public var titleStyle: DNSThemeLabelStyle

    public init(styleName: String?,
                styleSetName: String? = "",
                alertStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.alert,
                counterStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.counter,
                lineColor: DNSUIColor = DNSUIColor.Base.Field.line,
                textStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.text,
                titleStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.title,
                backgroundColor: DNSUIColor = DNSUIColor.Base.Field.background,
                border: DNSUIBorder = DNSUIBorder.Base.field,
                shadow: DNSUIShadow = DNSUIShadow.Base.field,
                tintColor: DNSUIColor = DNSUIColor.Base.Field.tint) {
        self.alertStyle = alertStyle
        self.counterStyle = counterStyle
        self.lineColor = lineColor
        self.textStyle = textStyle
        self.titleStyle = titleStyle
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
