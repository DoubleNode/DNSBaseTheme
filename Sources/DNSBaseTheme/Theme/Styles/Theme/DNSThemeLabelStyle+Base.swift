//
//  DNSThemeLabelStyle+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

public extension DNSThemeLabelStyle {
    enum Base {
        public static var `default` = DNSThemeLabelStyle(styleName: "default",
                                                         styleSetName: "Base")
        public enum Button {
            public static var subtitle = DNSThemeLabelStyle(styleName: "Button.subtitle",
                                                            styleSetName: "Base",
                                                            color: DNSUIColor.Base.Button.Subtitle.text,
                                                            font: DNSUIFont.Base.Button.subtitle,
                                                            strikeThru: DNSUIStrikeThru.Base.Button.subtitle,
                                                            shadow: DNSUIShadow.Base.Button.subtitle,
                                                            backgroundColor: DNSUIColor.Base.Button.Subtitle.background,
                                                            border: DNSUIBorder.Base.Button.subtitle,
                                                            tintColor: DNSUIColor.Base.Button.Subtitle.tint)
            public static var title = DNSThemeLabelStyle(styleName: "Button.subtitle",
                                                         styleSetName: "Base",
                                                         color: DNSUIColor.Base.Button.Title.text,
                                                         font: DNSUIFont.Base.Button.title,
                                                         strikeThru: DNSUIStrikeThru.Base.Button.title,
                                                         shadow: DNSUIShadow.Base.Button.title,
                                                         backgroundColor: DNSUIColor.Base.Button.Title.background,
                                                         border: DNSUIBorder.Base.Button.title,
                                                         tintColor: DNSUIColor.Base.Button.Title.tint)
        }
        public enum Field {
            public static var alert = DNSThemeLabelStyle(styleName: "Field.alert",
                                                         styleSetName: "Base",
                                                         color: DNSUIColor.Base.Field.Alert.text,
                                                         font: DNSUIFont.Base.Field.alert,
                                                         strikeThru: DNSUIStrikeThru.Base.Field.alert,
                                                         shadow: DNSUIShadow.Base.Field.alert,
                                                         backgroundColor: DNSUIColor.Base.Field.Alert.background,
                                                         border: DNSUIBorder.Base.Field.alert,
                                                         tintColor: DNSUIColor.Base.Field.Alert.tint)
            public static var counter = DNSThemeLabelStyle(styleName: "Field.counter",
                                                         styleSetName: "Base",
                                                         color: DNSUIColor.Base.Field.Counter.text,
                                                         font: DNSUIFont.Base.Field.counter,
                                                         strikeThru: DNSUIStrikeThru.Base.Field.counter,
                                                         shadow: DNSUIShadow.Base.Field.counter,
                                                         backgroundColor: DNSUIColor.Base.Field.Counter.background,
                                                         border: DNSUIBorder.Base.Field.counter,
                                                         tintColor: DNSUIColor.Base.Field.Counter.tint)
            public static var text = DNSThemeLabelStyle(styleName: "Field.text",
                                                         styleSetName: "Base",
                                                         color: DNSUIColor.Base.Field.Text.text,
                                                         font: DNSUIFont.Base.Field.text,
                                                         strikeThru: DNSUIStrikeThru.Base.Field.text,
                                                         shadow: DNSUIShadow.Base.Field.text,
                                                         backgroundColor: DNSUIColor.Base.Field.Text.background,
                                                         border: DNSUIBorder.Base.Field.text,
                                                         tintColor: DNSUIColor.Base.Field.Text.tint)
            public static var title = DNSThemeLabelStyle(styleName: "Field.title",
                                                         styleSetName: "Base",
                                                         color: DNSUIColor.Base.Field.Title.text,
                                                         font: DNSUIFont.Base.Field.title,
                                                         strikeThru: DNSUIStrikeThru.Base.Field.title,
                                                         shadow: DNSUIShadow.Base.Field.title,
                                                         backgroundColor: DNSUIColor.Base.Field.Title.background,
                                                         border: DNSUIBorder.Base.Field.title,
                                                         tintColor: DNSUIColor.Base.Field.Title.tint)
        }
    }
}
