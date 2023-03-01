//
//  DNSUIEnabled+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

public extension DNSUIEnabled {
    enum Base {
        public static var skeletonable = DNSUIEnabled(false)
        public enum Button {
            public static var skeletonable = DNSUIEnabled(false)
            public enum Subtitle {
                public static var strikeThru = DNSUIEnabled(false)
            }
            public enum Title {
                public static var strikeThru = DNSUIEnabled(false)
            }
        }
        public enum Field {
            public static var skeletonable = DNSUIEnabled(false)
            public enum Alert {
                public static var strikeThru = DNSUIEnabled(false)
            }
            public enum Counter {
                public static var strikeThru = DNSUIEnabled(false)
            }
            public enum Text {
                public static var strikeThru = DNSUIEnabled(false)
            }
            public enum Title {
                public static var strikeThru = DNSUIEnabled(false)
            }
        }
        public enum Label {
            public static var skeletonable = DNSUIEnabled(false)
            public static var strikeThru = DNSUIEnabled(false)
        }
    }
}
