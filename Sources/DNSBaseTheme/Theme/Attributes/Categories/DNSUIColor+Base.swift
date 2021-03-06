//
//  DNSUIColor+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

public extension DNSUIColor {
    enum Base {
        public static var background = DNSUIColor(UIColor.Base.background)
        public static var border = DNSUIColor(UIColor.Base.border)
        public static var shadow = DNSUIColor(UIColor.Base.shadow)
        public enum Button {
            public static var background = DNSUIColor(UIColor.Base.Button.Background.normal,
                                                      disabled: UIColor.Base.Button.Background.disabled,
                                                      focused: UIColor.Base.Button.Background.focused,
                                                      highlighted: UIColor.Base.Button.Background.highlighted,
                                                      selected: UIColor.Base.Button.Background.selected)
            public static var border = DNSUIColor(UIColor.Base.Button.Border.normal,
                                                  disabled: UIColor.Base.Button.Border.disabled,
                                                  focused: UIColor.Base.Button.Border.focused,
                                                  highlighted: UIColor.Base.Button.Border.highlighted,
                                                  selected: UIColor.Base.Button.Border.selected)
            public static var shadow = DNSUIColor(UIColor.Base.Button.Shadow.normal,
                                                  disabled: UIColor.Base.Button.Shadow.disabled,
                                                  focused: UIColor.Base.Button.Shadow.focused,
                                                  highlighted: UIColor.Base.Button.Shadow.highlighted,
                                                  selected: UIColor.Base.Button.Shadow.selected)
            public static var subtitle = DNSUIColor(UIColor.Base.Button.Subtitle.normal,
                                                    disabled: UIColor.Base.Button.Subtitle.disabled,
                                                    focused: UIColor.Base.Button.Subtitle.focused,
                                                    highlighted: UIColor.Base.Button.Subtitle.highlighted,
                                                    selected: UIColor.Base.Button.Subtitle.selected)
            public static var subtitleShadow = DNSUIColor(UIColor.Base.Button.Subtitle.Shadow.normal,
                                                          disabled: UIColor.Base.Button.Subtitle.Shadow.disabled,
                                                          focused: UIColor.Base.Button.Subtitle.Shadow.focused,
                                                          highlighted: UIColor.Base.Button.Subtitle.Shadow.highlighted,
                                                          selected: UIColor.Base.Button.Subtitle.Shadow.selected)
            public static var tint = DNSUIColor(UIColor.Base.Button.Tint.normal,
                                                disabled: UIColor.Base.Button.Tint.disabled,
                                                focused: UIColor.Base.Button.Tint.focused,
                                                highlighted: UIColor.Base.Button.Tint.highlighted,
                                                selected: UIColor.Base.Button.Tint.selected)
            public static var title = DNSUIColor(UIColor.Base.Button.Title.normal,
                                                 disabled: UIColor.Base.Button.Title.disabled,
                                                 focused: UIColor.Base.Button.Title.focused,
                                                 highlighted: UIColor.Base.Button.Title.highlighted,
                                                 selected: UIColor.Base.Button.Title.selected)
            public static var titleShadow = DNSUIColor(UIColor.Base.Button.Title.Shadow.normal,
                                                       disabled: UIColor.Base.Button.Title.Shadow.disabled,
                                                       focused: UIColor.Base.Button.Title.Shadow.focused,
                                                       highlighted: UIColor.Base.Button.Title.Shadow.highlighted,
                                                       selected: UIColor.Base.Button.Title.Shadow.selected)
        }
        public enum Field {
            public static var alert = DNSUIColor(UIColor.Base.Field.alert)
            public static var background = DNSUIColor(UIColor.Base.Field.background)
            public static var border = DNSUIColor(UIColor.Base.Field.border)
            public static var counter = DNSUIColor(UIColor.Base.Field.counter)
            public static var highlight = DNSUIColor(UIColor.Base.Field.highlight)
            public static var line = DNSUIColor(UIColor.Base.Field.line)
            public static var shadow = DNSUIColor(UIColor.Base.Field.shadow)
            public static var text = DNSUIColor(UIColor.Base.Field.text)
            public static var tint = DNSUIColor(UIColor.Base.Field.tint)
            public static var title = DNSUIColor(UIColor.Base.Field.title)
        }
        public enum Label {
            public static var background = DNSUIColor(UIColor.Base.Label.background)
            public static var text = DNSUIColor(UIColor.Base.Label.text)
        }
        public enum View {
            public static var background = DNSUIColor(UIColor.Base.View.background)
            public static var tint = DNSUIColor(UIColor.Base.View.tint)
        }
    }
}
