//
//  DNSUIColor+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

public extension DNSUIColor {
    enum Base {
        public static var background = DNSUIColor(UIColor.Base.background)
        public static var border = DNSUIColor(UIColor.Base.border)
        public static var shadow = DNSUIColor(UIColor.Base.shadow)
        public static var tint = DNSUIColor(UIColor.Base.tint)
        public enum Button {
            public static var background = DNSUIColor(UIColor.Base.Button.background)
            public static var border = DNSUIColor(UIColor.Base.Button.border)
            public static var shadow = DNSUIColor(UIColor.Base.Button.shadow)
            public static var tint = DNSUIColor(UIColor.Base.Button.tint)
            public enum Subtitle {
                public static var background = DNSUIColor(UIColor.Base.Button.Subtitle.Background.normal,
                                                          disabled: UIColor.Base.Button.Subtitle.Background.disabled,
                                                          focused: UIColor.Base.Button.Subtitle.Background.focused,
                                                          highlighted: UIColor.Base.Button.Subtitle.Background.highlighted,
                                                          selected: UIColor.Base.Button.Subtitle.Background.selected)
                public static var border = DNSUIColor(UIColor.Base.Button.Subtitle.Border.normal,
                                                      disabled: UIColor.Base.Button.Subtitle.Border.disabled,
                                                      focused: UIColor.Base.Button.Subtitle.Border.focused,
                                                      highlighted: UIColor.Base.Button.Subtitle.Border.highlighted,
                                                      selected: UIColor.Base.Button.Subtitle.Border.selected)
                public static var shadow = DNSUIColor(UIColor.Base.Button.Subtitle.Shadow.normal,
                                                      disabled: UIColor.Base.Button.Subtitle.Shadow.disabled,
                                                      focused: UIColor.Base.Button.Subtitle.Shadow.focused,
                                                      highlighted: UIColor.Base.Button.Subtitle.Shadow.highlighted,
                                                      selected: UIColor.Base.Button.Subtitle.Shadow.selected)
                public static var strikeThru = DNSUIColor(UIColor.Base.Button.Subtitle.StrikeThru.normal,
                                                      disabled: UIColor.Base.Button.Subtitle.StrikeThru.disabled,
                                                      focused: UIColor.Base.Button.Subtitle.StrikeThru.focused,
                                                      highlighted: UIColor.Base.Button.Subtitle.StrikeThru.highlighted,
                                                      selected: UIColor.Base.Button.Subtitle.StrikeThru.selected)
                public static var text = DNSUIColor(UIColor.Base.Button.Subtitle.Text.normal,
                                                    disabled: UIColor.Base.Button.Subtitle.Text.disabled,
                                                    focused: UIColor.Base.Button.Subtitle.Text.focused,
                                                    highlighted: UIColor.Base.Button.Subtitle.Text.highlighted,
                                                    selected: UIColor.Base.Button.Subtitle.Text.selected)
                public static var tint = DNSUIColor(UIColor.Base.Button.Subtitle.Tint.normal,
                                                    disabled: UIColor.Base.Button.Subtitle.Tint.disabled,
                                                    focused: UIColor.Base.Button.Subtitle.Tint.focused,
                                                    highlighted: UIColor.Base.Button.Subtitle.Tint.highlighted,
                                                    selected: UIColor.Base.Button.Subtitle.Tint.selected)
            }
            public enum Title {
                public static var background = DNSUIColor(UIColor.Base.Button.Title.Background.normal,
                                                          disabled: UIColor.Base.Button.Title.Background.disabled,
                                                          focused: UIColor.Base.Button.Title.Background.focused,
                                                          highlighted: UIColor.Base.Button.Title.Background.highlighted,
                                                          selected: UIColor.Base.Button.Title.Background.selected)
                public static var border = DNSUIColor(UIColor.Base.Button.Title.Border.normal,
                                                      disabled: UIColor.Base.Button.Title.Border.disabled,
                                                      focused: UIColor.Base.Button.Title.Border.focused,
                                                      highlighted: UIColor.Base.Button.Title.Border.highlighted,
                                                      selected: UIColor.Base.Button.Title.Border.selected)
                public static var shadow = DNSUIColor(UIColor.Base.Button.Title.Shadow.normal,
                                                      disabled: UIColor.Base.Button.Title.Shadow.disabled,
                                                      focused: UIColor.Base.Button.Title.Shadow.focused,
                                                      highlighted: UIColor.Base.Button.Title.Shadow.highlighted,
                                                      selected: UIColor.Base.Button.Title.Shadow.selected)
                public static var strikeThru = DNSUIColor(UIColor.Base.Button.Title.StrikeThru.normal,
                                                      disabled: UIColor.Base.Button.Title.StrikeThru.disabled,
                                                      focused: UIColor.Base.Button.Title.StrikeThru.focused,
                                                      highlighted: UIColor.Base.Button.Title.StrikeThru.highlighted,
                                                      selected: UIColor.Base.Button.Title.StrikeThru.selected)
                public static var text = DNSUIColor(UIColor.Base.Button.Title.Text.normal,
                                                    disabled: UIColor.Base.Button.Title.Text.disabled,
                                                    focused: UIColor.Base.Button.Title.Text.focused,
                                                    highlighted: UIColor.Base.Button.Title.Text.highlighted,
                                                    selected: UIColor.Base.Button.Title.Text.selected)
                public static var tint = DNSUIColor(UIColor.Base.Button.Title.Tint.normal,
                                                    disabled: UIColor.Base.Button.Title.Tint.disabled,
                                                    focused: UIColor.Base.Button.Title.Tint.focused,
                                                    highlighted: UIColor.Base.Button.Title.Tint.highlighted,
                                                    selected: UIColor.Base.Button.Title.Tint.selected)
            }
        }
        public enum Field {
            public static var background = DNSUIColor(UIColor.Base.Field.background)
            public static var border = DNSUIColor(UIColor.Base.Field.border)
            public static var line = DNSUIColor(UIColor.Base.Field.Line.normal,
                                                disabled: UIColor.Base.Field.Line.disabled,
                                                focused: UIColor.Base.Field.Line.focused,
                                                highlighted: UIColor.Base.Field.Line.highlighted,
                                                selected: UIColor.Base.Field.Line.selected)
            public static var pickerText = DNSUIColor(UIColor.Base.Field.pickerText)
            public static var placeholder = DNSUIColor(UIColor.Base.Field.placeholder)
            public static var shadow = DNSUIColor(UIColor.Base.Field.shadow)
            public static var tint = DNSUIColor(UIColor.Base.Field.tint)
            public enum Alert {
                public static var background = DNSUIColor(UIColor.Base.Field.Alert.Background.normal,
                                                          disabled: UIColor.Base.Field.Alert.Background.disabled,
                                                          focused: UIColor.Base.Field.Alert.Background.focused,
                                                          highlighted: UIColor.Base.Field.Alert.Background.highlighted,
                                                          selected: UIColor.Base.Field.Alert.Background.selected)
                public static var border = DNSUIColor(UIColor.Base.Field.Alert.Border.normal,
                                                      disabled: UIColor.Base.Field.Alert.Border.disabled,
                                                      focused: UIColor.Base.Field.Alert.Border.focused,
                                                      highlighted: UIColor.Base.Field.Alert.Border.highlighted,
                                                      selected: UIColor.Base.Field.Alert.Border.selected)
                public static var shadow = DNSUIColor(UIColor.Base.Field.Alert.Shadow.normal,
                                                      disabled: UIColor.Base.Field.Alert.Shadow.disabled,
                                                      focused: UIColor.Base.Field.Alert.Shadow.focused,
                                                      highlighted: UIColor.Base.Field.Alert.Shadow.highlighted,
                                                      selected: UIColor.Base.Field.Alert.Shadow.selected)
                public static var strikeThru = DNSUIColor(UIColor.Base.Field.Alert.StrikeThru.normal,
                                                      disabled: UIColor.Base.Field.Alert.StrikeThru.disabled,
                                                      focused: UIColor.Base.Field.Alert.StrikeThru.focused,
                                                      highlighted: UIColor.Base.Field.Alert.StrikeThru.highlighted,
                                                      selected: UIColor.Base.Field.Alert.StrikeThru.selected)
                public static var text = DNSUIColor(UIColor.Base.Field.Alert.Text.normal,
                                                    disabled: UIColor.Base.Field.Alert.Text.disabled,
                                                    focused: UIColor.Base.Field.Alert.Text.focused,
                                                    highlighted: UIColor.Base.Field.Alert.Text.highlighted,
                                                    selected: UIColor.Base.Field.Alert.Text.selected)
                public static var tint = DNSUIColor(UIColor.Base.Field.Alert.Tint.normal,
                                                    disabled: UIColor.Base.Field.Alert.Tint.disabled,
                                                    focused: UIColor.Base.Field.Alert.Tint.focused,
                                                    highlighted: UIColor.Base.Field.Alert.Tint.highlighted,
                                                    selected: UIColor.Base.Field.Alert.Tint.selected)
            }
            public enum Counter {
                public static var background = DNSUIColor(UIColor.Base.Field.Counter.Background.normal,
                                                          disabled: UIColor.Base.Field.Counter.Background.disabled,
                                                          focused: UIColor.Base.Field.Counter.Background.focused,
                                                          highlighted: UIColor.Base.Field.Counter.Background.highlighted,
                                                          selected: UIColor.Base.Field.Counter.Background.selected)
                public static var border = DNSUIColor(UIColor.Base.Field.Counter.Border.normal,
                                                      disabled: UIColor.Base.Field.Counter.Border.disabled,
                                                      focused: UIColor.Base.Field.Counter.Border.focused,
                                                      highlighted: UIColor.Base.Field.Counter.Border.highlighted,
                                                      selected: UIColor.Base.Field.Counter.Border.selected)
                public static var shadow = DNSUIColor(UIColor.Base.Field.Counter.Shadow.normal,
                                                      disabled: UIColor.Base.Field.Counter.Shadow.disabled,
                                                      focused: UIColor.Base.Field.Counter.Shadow.focused,
                                                      highlighted: UIColor.Base.Field.Counter.Shadow.highlighted,
                                                      selected: UIColor.Base.Field.Counter.Shadow.selected)
                public static var strikeThru = DNSUIColor(UIColor.Base.Field.Counter.StrikeThru.normal,
                                                      disabled: UIColor.Base.Field.Counter.StrikeThru.disabled,
                                                      focused: UIColor.Base.Field.Counter.StrikeThru.focused,
                                                      highlighted: UIColor.Base.Field.Counter.StrikeThru.highlighted,
                                                      selected: UIColor.Base.Field.Counter.StrikeThru.selected)
                public static var text = DNSUIColor(UIColor.Base.Field.Counter.Text.normal,
                                                    disabled: UIColor.Base.Field.Counter.Text.disabled,
                                                    focused: UIColor.Base.Field.Counter.Text.focused,
                                                    highlighted: UIColor.Base.Field.Counter.Text.highlighted,
                                                    selected: UIColor.Base.Field.Counter.Text.selected)
                public static var tint = DNSUIColor(UIColor.Base.Field.Counter.Tint.normal,
                                                    disabled: UIColor.Base.Field.Counter.Tint.disabled,
                                                    focused: UIColor.Base.Field.Counter.Tint.focused,
                                                    highlighted: UIColor.Base.Field.Counter.Tint.highlighted,
                                                    selected: UIColor.Base.Field.Counter.Tint.selected)
            }
            public enum Text {
                public static var background = DNSUIColor(UIColor.Base.Field.Text.Background.normal,
                                                          disabled: UIColor.Base.Field.Text.Background.disabled,
                                                          focused: UIColor.Base.Field.Text.Background.focused,
                                                          highlighted: UIColor.Base.Field.Text.Background.highlighted,
                                                          selected: UIColor.Base.Field.Text.Background.selected)
                public static var border = DNSUIColor(UIColor.Base.Field.Text.Border.normal,
                                                      disabled: UIColor.Base.Field.Text.Border.disabled,
                                                      focused: UIColor.Base.Field.Text.Border.focused,
                                                      highlighted: UIColor.Base.Field.Text.Border.highlighted,
                                                      selected: UIColor.Base.Field.Text.Border.selected)
                public static var shadow = DNSUIColor(UIColor.Base.Field.Text.Shadow.normal,
                                                      disabled: UIColor.Base.Field.Text.Shadow.disabled,
                                                      focused: UIColor.Base.Field.Text.Shadow.focused,
                                                      highlighted: UIColor.Base.Field.Text.Shadow.highlighted,
                                                      selected: UIColor.Base.Field.Text.Shadow.selected)
                public static var strikeThru = DNSUIColor(UIColor.Base.Field.Text.StrikeThru.normal,
                                                      disabled: UIColor.Base.Field.Text.StrikeThru.disabled,
                                                      focused: UIColor.Base.Field.Text.StrikeThru.focused,
                                                      highlighted: UIColor.Base.Field.Text.StrikeThru.highlighted,
                                                      selected: UIColor.Base.Field.Text.StrikeThru.selected)
                public static var text = DNSUIColor(UIColor.Base.Field.Text.Text.normal,
                                                    disabled: UIColor.Base.Field.Text.Text.disabled,
                                                    focused: UIColor.Base.Field.Text.Text.focused,
                                                    highlighted: UIColor.Base.Field.Text.Text.highlighted,
                                                    selected: UIColor.Base.Field.Text.Text.selected)
                public static var tint = DNSUIColor(UIColor.Base.Field.Text.Tint.normal,
                                                    disabled: UIColor.Base.Field.Text.Tint.disabled,
                                                    focused: UIColor.Base.Field.Text.Tint.focused,
                                                    highlighted: UIColor.Base.Field.Text.Tint.highlighted,
                                                    selected: UIColor.Base.Field.Text.Tint.selected)
            }
            public enum Title {
                public static var background = DNSUIColor(UIColor.Base.Field.Title.Background.normal,
                                                          disabled: UIColor.Base.Field.Title.Background.disabled,
                                                          focused: UIColor.Base.Field.Title.Background.focused,
                                                          highlighted: UIColor.Base.Field.Title.Background.highlighted,
                                                          selected: UIColor.Base.Field.Title.Background.selected)
                public static var border = DNSUIColor(UIColor.Base.Field.Title.Border.normal,
                                                      disabled: UIColor.Base.Field.Title.Border.disabled,
                                                      focused: UIColor.Base.Field.Title.Border.focused,
                                                      highlighted: UIColor.Base.Field.Title.Border.highlighted,
                                                      selected: UIColor.Base.Field.Title.Border.selected)
                public static var shadow = DNSUIColor(UIColor.Base.Field.Title.Shadow.normal,
                                                      disabled: UIColor.Base.Field.Title.Shadow.disabled,
                                                      focused: UIColor.Base.Field.Title.Shadow.focused,
                                                      highlighted: UIColor.Base.Field.Title.Shadow.highlighted,
                                                      selected: UIColor.Base.Field.Title.Shadow.selected)
                public static var strikeThru = DNSUIColor(UIColor.Base.Field.Title.StrikeThru.normal,
                                                      disabled: UIColor.Base.Field.Title.StrikeThru.disabled,
                                                      focused: UIColor.Base.Field.Title.StrikeThru.focused,
                                                      highlighted: UIColor.Base.Field.Title.StrikeThru.highlighted,
                                                      selected: UIColor.Base.Field.Title.StrikeThru.selected)
                public static var text = DNSUIColor(UIColor.Base.Field.Title.Text.normal,
                                                    disabled: UIColor.Base.Field.Title.Text.disabled,
                                                    focused: UIColor.Base.Field.Title.Text.focused,
                                                    highlighted: UIColor.Base.Field.Title.Text.highlighted,
                                                    selected: UIColor.Base.Field.Title.Text.selected)
                public static var tint = DNSUIColor(UIColor.Base.Field.Title.Tint.normal,
                                                    disabled: UIColor.Base.Field.Title.Tint.disabled,
                                                    focused: UIColor.Base.Field.Title.Tint.focused,
                                                    highlighted: UIColor.Base.Field.Title.Tint.highlighted,
                                                    selected: UIColor.Base.Field.Title.Tint.selected)
            }
        }
        public enum Label {
            public static var background = DNSUIColor(UIColor.Base.Label.Background.normal,
                                                      disabled: UIColor.Base.Label.Background.disabled,
                                                      focused: UIColor.Base.Label.Background.focused,
                                                      highlighted: UIColor.Base.Label.Background.highlighted,
                                                      selected: UIColor.Base.Label.Background.selected)
            public static var border = DNSUIColor(UIColor.Base.Label.Border.normal,
                                                  disabled: UIColor.Base.Label.Border.disabled,
                                                  focused: UIColor.Base.Label.Border.focused,
                                                  highlighted: UIColor.Base.Label.Border.highlighted,
                                                  selected: UIColor.Base.Label.Border.selected)
            public static var shadow = DNSUIColor(UIColor.Base.Label.Shadow.normal,
                                                  disabled: UIColor.Base.Label.Shadow.disabled,
                                                  focused: UIColor.Base.Label.Shadow.focused,
                                                  highlighted: UIColor.Base.Label.Shadow.highlighted,
                                                  selected: UIColor.Base.Label.Shadow.selected)
            public static var strikeThru = DNSUIColor(UIColor.Base.Label.StrikeThru.normal,
                                                      disabled: UIColor.Base.Label.StrikeThru.disabled,
                                                      focused: UIColor.Base.Label.StrikeThru.focused,
                                                      highlighted: UIColor.Base.Label.StrikeThru.highlighted,
                                                      selected: UIColor.Base.Label.StrikeThru.selected)
            public static var text = DNSUIColor(UIColor.Base.Label.Text.normal,
                                                disabled: UIColor.Base.Label.Text.disabled,
                                                focused: UIColor.Base.Label.Text.focused,
                                                highlighted: UIColor.Base.Label.Text.highlighted,
                                                selected: UIColor.Base.Label.Text.selected)
            public static var tint = DNSUIColor(UIColor.Base.Label.Tint.normal,
                                                disabled: UIColor.Base.Label.Tint.disabled,
                                                focused: UIColor.Base.Label.Tint.focused,
                                                highlighted: UIColor.Base.Label.Tint.highlighted,
                                                selected: UIColor.Base.Label.Tint.selected)
        }
        public enum View {
            public static var background = DNSUIColor(UIColor.Base.View.background)
            public static var tint = DNSUIColor(UIColor.Base.View.tint)
        }
    }
}
