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
        public enum Button {
            public enum Subtitle {
                public static var strikeThru = DNSUIEnabled(false)
            }
            public enum Title {
                public static var strikeThru = DNSUIEnabled(false)
            }
        }
        public enum Field {
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
            public static var strikeThru = DNSUIEnabled(false)
        }
    }
}
