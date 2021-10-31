//
//  DNSThemeFieldStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSThemeFieldStyle: DNSThemeStyle {
    public var alertColor: DNSUIColor
    public var alertFont: DNSUIFont
    public var counterColor: DNSUIColor
    public var counterFont: DNSUIFont
    public var highlightColor: DNSUIColor
    public var lineColor: DNSUIColor
    public var textColor: DNSUIColor
    public var textFont: DNSUIFont
    public var titleColor: DNSUIColor
    public var titleFont: DNSUIFont

    public init(alertColor: DNSUIColor = DNSUIColor.Base.Field.alert,
                alertFont: DNSUIFont = DNSUIFont.Base.Field.alert,
                counterColor: DNSUIColor = DNSUIColor.Base.Field.counter,
                counterFont: DNSUIFont = DNSUIFont.Base.Field.counter,
                highlightColor: DNSUIColor = DNSUIColor.Base.Field.highlight,
                lineColor: DNSUIColor = DNSUIColor.Base.Field.line,
                textColor: DNSUIColor = DNSUIColor.Base.Field.text,
                textFont: DNSUIFont = DNSUIFont.Base.Field.text,
                titleColor: DNSUIColor = DNSUIColor.Base.Field.title,
                titleFont: DNSUIFont = DNSUIFont.Base.Field.title,
                backgroundColor: DNSUIColor = DNSUIColor.Base.Button.background,
                border: DNSUIBorder = DNSUIBorder.Base.button,
                shadow: DNSUIShadow = DNSUIShadow.Base.button,
                tintColor: DNSUIColor = DNSUIColor.Base.Button.tint) {
        self.alertColor = alertColor
        self.alertFont = alertFont
        self.counterColor = counterColor
        self.counterFont = counterFont
        self.highlightColor = highlightColor
        self.lineColor = lineColor
        self.textColor = textColor
        self.textFont = textFont
        self.titleColor = titleColor
        self.titleFont = titleFont
        super.init(backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   tintColor: tintColor)
    }
}
public extension DNSThemeFieldStyle {
    enum Base {
        public static var `default` = DNSThemeFieldStyle()
    }
}
