//
//  UIFont+dnsThemeBase.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

public extension UIFont {
    enum Base {
        public static var label = UIFont.dnsCustom(with: "System", and: 17)
        public enum Button {
            public enum Subtitle {
                public static var disabled = UIFont.dnsCustom(with: "System", and: 12)
                public static var focused = UIFont.dnsCustom(with: "System", and: 12)
                public static var highlighted = UIFont.dnsCustom(with: "System", and: 12)
                public static var normal = UIFont.dnsCustom(with: "System", and: 12)
                public static var selected = UIFont.dnsCustom(with: "System", and: 12)
            }
            public enum Title {
                public static var disabled = UIFont.dnsCustom(with: "System", and: 15)
                public static var focused = UIFont.dnsCustom(with: "System", and: 15)
                public static var highlighted = UIFont.dnsCustom(with: "System", and: 15)
                public static var normal = UIFont.dnsCustom(with: "System", and: 15)
                public static var selected = UIFont.dnsCustom(with: "System", and: 15)
            }
        }
        public enum Field {
            public static var alert = UIFont.dnsCustom(with: "System", and: 13)
            public static var counter = UIFont.dnsCustom(with: "System", and: 13)
            public static var text = UIFont.dnsCustom(with: "System", and: 16)
            public static var title = UIFont.dnsCustom(with: "System", and: 13)
        }
    }
}
