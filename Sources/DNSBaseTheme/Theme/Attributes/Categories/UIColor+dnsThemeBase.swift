//
//  UIColor+dnsThemeBase.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

public extension UIColor {
    enum Base {
        public static var background = UIColor.systemBackground
        public static var border = UIColor.clear
        public static var shadow = UIColor.clear
        public static var tint = UIColor.systemBlue
        public enum Button {
            public enum Background {
                public static var disabled = UIColor.clear
                public static var focused = UIColor.clear
                public static var highlighted = UIColor.clear
                public static var normal = UIColor.clear
                public static var selected = UIColor.clear
            }
            public enum Border {
                public static var disabled = UIColor.clear
                public static var focused = UIColor.clear
                public static var highlighted = UIColor.clear
                public static var normal = UIColor.clear
                public static var selected = UIColor.clear
            }
            public enum Shadow {
                public static var disabled = UIColor.clear
                public static var focused = UIColor.clear
                public static var highlighted = UIColor.clear
                public static var normal = UIColor.clear
                public static var selected = UIColor.clear
            }
            public enum Subtitle {
                public static var disabled = UIColor.systemBlue
                public static var focused = UIColor.systemBlue
                public static var highlighted = UIColor.white
                public static var normal = UIColor.systemBlue
                public static var selected = UIColor.systemBlue
                
                public enum Shadow {
                    public static var disabled = UIColor.clear
                    public static var focused = UIColor.clear
                    public static var highlighted = UIColor.clear
                    public static var normal = UIColor.clear
                    public static var selected = UIColor.clear
                }
            }
            public enum Tint {
                public static var disabled = UIColor.systemBlue
                public static var focused = UIColor.systemBlue
                public static var highlighted = UIColor.systemBlue
                public static var normal = UIColor.systemBlue
                public static var selected = UIColor.systemBlue
            }
            public enum Title {
                public static var disabled = UIColor.systemGray
                public static var focused = UIColor.systemBlue
                public static var highlighted = UIColor.white
                public static var normal = UIColor.systemBlue
                public static var selected = UIColor.systemBlue
                
                public enum Shadow {
                    public static var disabled = UIColor.clear
                    public static var focused = UIColor.clear
                    public static var highlighted = UIColor.clear
                    public static var normal = UIColor.clear
                    public static var selected = UIColor.clear
                }
            }
        }
        public enum Field {
            public static var alert = UIColor.systemRed
            public static var background = UIColor.systemBackground
            public static var border = UIColor.clear
            public static var counter = UIColor.quaternaryLabel
            public static var highlight = UIColor.systemBlue
            public static var line = UIColor.tertiaryLabel
            public static var shadow = UIColor.clear
            public static var text = UIColor.label
            public static var tint = UIColor.systemBlue
            public static var title = UIColor.tertiaryLabel
        }
        public enum Label {
            public static var background = UIColor.clear
            public static var strikeThru = UIColor.label
            public static var text = UIColor.label
        }
        public enum View {
            public static var background = UIColor.systemBackground
            public static var tint = UIColor.systemBlue
        }
    }
}
