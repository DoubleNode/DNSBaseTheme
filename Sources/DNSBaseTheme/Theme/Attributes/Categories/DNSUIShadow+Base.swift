//
//  DNSUIShadow+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

public extension DNSUIShadow {
    enum Base {
        public static var `default` = DNSUIShadow(color: DNSUIColor.Base.shadow)
        public static var button = DNSUIShadow(color: DNSUIColor.Base.Button.shadow)
        public static var field = DNSUIShadow(color: DNSUIColor.Base.Field.shadow)
        public enum Button {
            public static var subtitle = DNSUIShadow(color: DNSUIColor.Base.Button.Subtitle.shadow)
            public static var title = DNSUIShadow(color: DNSUIColor.Base.Button.Title.shadow)
        }
        public enum Field {
            public static var alert = DNSUIShadow(color: DNSUIColor.Base.Field.Alert.shadow)
            public static var counter = DNSUIShadow(color: DNSUIColor.Base.Field.Counter.shadow)
            public static var text = DNSUIShadow(color: DNSUIColor.Base.Field.Text.shadow)
            public static var title = DNSUIShadow(color: DNSUIColor.Base.Field.Title.shadow)
        }
        public enum Label {
            public static var background = DNSUIShadow(color: DNSUIColor.Base.Label.background)
            public static var strikeThru = DNSUIShadow(color: DNSUIColor.Base.Label.strikeThru)
            public static var text = DNSUIShadow(color: DNSUIColor.Base.Label.text)
        }
    }
}
