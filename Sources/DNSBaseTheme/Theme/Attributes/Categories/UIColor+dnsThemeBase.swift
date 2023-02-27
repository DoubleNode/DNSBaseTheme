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
            public static var background = UIColor.systemBackground
            public static var border = UIColor.clear
            public static var shadow = UIColor.clear
            public static var tint = UIColor.systemBlue
            public enum Subtitle {
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
                public enum StrikeThru {
                    public static var disabled = UIColor.clear
                    public static var focused = UIColor.clear
                    public static var highlighted = UIColor.clear
                    public static var normal = UIColor.clear
                    public static var selected = UIColor.clear
                }
                public enum Text {
                    public static var disabled = UIColor.systemBlue
                    public static var focused = UIColor.systemBlue
                    public static var highlighted = UIColor.white
                    public static var normal = UIColor.systemBlue
                    public static var selected = UIColor.systemBlue
                }
                public enum Tint {
                    public static var disabled = UIColor.systemBlue
                    public static var focused = UIColor.systemBlue
                    public static var highlighted = UIColor.systemBlue
                    public static var normal = UIColor.systemBlue
                    public static var selected = UIColor.systemBlue
                }
            }
            public enum Title {
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
                public enum StrikeThru {
                    public static var disabled = UIColor.clear
                    public static var focused = UIColor.clear
                    public static var highlighted = UIColor.clear
                    public static var normal = UIColor.clear
                    public static var selected = UIColor.clear
                }
                public enum Text {
                    public static var disabled = UIColor.systemGray
                    public static var focused = UIColor.systemBlue
                    public static var highlighted = UIColor.white
                    public static var normal = UIColor.systemBlue
                    public static var selected = UIColor.systemBlue
                }
                public enum Tint {
                    public static var disabled = UIColor.systemBlue
                    public static var focused = UIColor.systemBlue
                    public static var highlighted = UIColor.systemBlue
                    public static var normal = UIColor.systemBlue
                    public static var selected = UIColor.systemBlue
                }
            }
        }
        public enum Field {
            public static var background = UIColor.clear
            public static var border = UIColor.clear
            public enum Line {
                public static var disabled = UIColor.gray
                public static var focused = UIColor.label
                public static var highlighted = UIColor.label
                public static var normal = UIColor.label
                public static var selected = UIColor.label
            }
            public static var pickerText = UIColor.white
            public static var placeholder = UIColor.lightGray.withAlphaComponent(0.8)
            public static var shadow = UIColor.clear
            public static var tint = UIColor.systemBlue
            public enum Alert {
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
                public enum StrikeThru {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.label
                    public static var highlighted = UIColor.label
                    public static var normal = UIColor.label
                    public static var selected = UIColor.label
                }
                public enum Text {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.systemRed
                    public static var highlighted = UIColor.systemRed
                    public static var normal = UIColor.systemRed
                    public static var selected = UIColor.systemRed
                }
                public enum Tint {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.systemBlue
                    public static var highlighted = UIColor.systemBlue
                    public static var normal = UIColor.systemBlue
                    public static var selected = UIColor.systemBlue
                }
            }
            public enum Counter {
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
                public enum StrikeThru {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.label
                    public static var highlighted = UIColor.label
                    public static var normal = UIColor.label
                    public static var selected = UIColor.label
                }
                public enum Text {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.label
                    public static var highlighted = UIColor.label
                    public static var normal = UIColor.label
                    public static var selected = UIColor.label
                }
                public enum Tint {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.systemBlue
                    public static var highlighted = UIColor.systemBlue
                    public static var normal = UIColor.systemBlue
                    public static var selected = UIColor.systemBlue
                }
            }
            public enum Text {
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
                public enum StrikeThru {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.label
                    public static var highlighted = UIColor.label
                    public static var normal = UIColor.label
                    public static var selected = UIColor.label
                }
                public enum Text {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.label
                    public static var highlighted = UIColor.label
                    public static var normal = UIColor.label
                    public static var selected = UIColor.label
                }
                public enum Tint {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.systemBlue
                    public static var highlighted = UIColor.systemBlue
                    public static var normal = UIColor.systemBlue
                    public static var selected = UIColor.systemBlue
                }
            }
            public enum Title {
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
                public enum StrikeThru {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.label
                    public static var highlighted = UIColor.label
                    public static var normal = UIColor.label
                    public static var selected = UIColor.label
                }
                public enum Text {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.label
                    public static var highlighted = UIColor.label
                    public static var normal = UIColor.label
                    public static var selected = UIColor.label
                }
                public enum Tint {
                    public static var disabled = UIColor.gray
                    public static var focused = UIColor.systemBlue
                    public static var highlighted = UIColor.systemBlue
                    public static var normal = UIColor.systemBlue
                    public static var selected = UIColor.systemBlue
                }
            }
        }
        public enum Label {
            public static var strikeThru = UIColor.label
            public static var text = UIColor.label
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
            public enum StrikeThru {
                public static var disabled = UIColor.gray
                public static var focused = UIColor.label
                public static var highlighted = UIColor.label
                public static var normal = UIColor.label
                public static var selected = UIColor.label
            }
            public enum Text {
                public static var disabled = UIColor.gray
                public static var focused = UIColor.label
                public static var highlighted = UIColor.label
                public static var normal = UIColor.label
                public static var selected = UIColor.label
            }
            public enum Tint {
                public static var disabled = UIColor.gray
                public static var focused = UIColor.systemBlue
                public static var highlighted = UIColor.systemBlue
                public static var normal = UIColor.systemBlue
                public static var selected = UIColor.systemBlue
            }
        }
        public enum View {
            public static var background = UIColor.systemBackground
            public static var tint = UIColor.systemBlue
        }
    }
}
