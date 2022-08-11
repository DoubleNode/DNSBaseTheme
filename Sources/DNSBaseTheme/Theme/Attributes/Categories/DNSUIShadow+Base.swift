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
        public static var button = DNSUIShadow(color: DNSUIColor.Base.Button.shadow)
        public static var field = DNSUIShadow(color: DNSUIColor.Base.Field.shadow)
        public enum Button {
            public static var subtitle = DNSUIShadow(color: DNSUIColor.Base.Button.subtitleShadow)
            public static var title = DNSUIShadow(color: DNSUIColor.Base.Button.titleShadow)
        }
    }
}
