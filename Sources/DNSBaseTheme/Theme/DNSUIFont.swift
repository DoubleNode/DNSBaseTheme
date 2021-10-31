//
//  DNSUIFont.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSUIFont {
    public var font: UIFont
    
    required public init(_ font: UIFont) {
        self.font = font
    }
}
public extension DNSUIFont {
    enum Base {
        public static var label = DNSUIFont(UIFont.Base.label)
        public enum Button {
            public static var subtitle = DNSUIFont(UIFont.Base.Button.subtitle)
            public static var title = DNSUIFont(UIFont.Base.Button.title)
        }
        public enum Field {
            public static var alert = DNSUIFont(UIFont.Base.Field.alert)
            public static var counter = DNSUIFont(UIFont.Base.Field.counter)
            public static var text = DNSUIFont(UIFont.Base.Field.text)
            public static var title = DNSUIFont(UIFont.Base.Field.title)
        }
    }
}
