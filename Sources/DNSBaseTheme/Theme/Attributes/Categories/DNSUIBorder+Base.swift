//
//  DNSUIBorder+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

public extension DNSUIBorder {
    enum Base {
        public static var `default` = DNSUIBorder(color: DNSUIColor.Base.border)
        public static var button = DNSUIBorder(color: DNSUIColor.Base.Button.border)
        public enum Button {
            public static var subtitle = DNSUIBorder(color: DNSUIColor.Base.Button.Subtitle.border)
            public static var title = DNSUIBorder(color: DNSUIColor.Base.Button.Title.border)
        }
        public enum Field {
            public static var alert = DNSUIBorder(color: DNSUIColor.Base.Field.Alert.border)
            public static var counter = DNSUIBorder(color: DNSUIColor.Base.Field.Counter.border)
            public static var text = DNSUIBorder(color: DNSUIColor.Base.Field.Text.border)
            public static var title = DNSUIBorder(color: DNSUIColor.Base.Field.Title.border)
        }
        public static var field = DNSUIBorder(color: DNSUIColor.Base.Field.border)
        public static var label = DNSUIBorder(color: DNSUIColor.Base.Label.border)
    }
}
