//
//  DNSUIFont.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSUIFont {
    public var disabled: UIFont
    public var focused: UIFont
    public var highlighted: UIFont
    public var normal: UIFont
    public var selected: UIFont
    
    required public init(_ normal: UIFont,
                         disabled: UIFont? = nil,
                         focused: UIFont? = nil,
                         highlighted: UIFont? = nil,
                         selected: UIFont? = nil) {
        self.normal = normal
        self.disabled = disabled ?? normal
        self.focused = focused ?? normal
        self.highlighted = highlighted ?? normal
        self.selected = selected ?? normal
    }
}
public extension DNSUIFont {
    enum Base {
        public static var label = DNSUIFont(UIFont.Base.label)
        public enum Button {
            public static var subtitle = DNSUIFont(UIFont.Base.Button.Subtitle.normal,
                                                   disabled: UIFont.Base.Button.Subtitle.disabled,
                                                   focused: UIFont.Base.Button.Subtitle.focused,
                                                   highlighted: UIFont.Base.Button.Subtitle.highlighted,
                                                   selected: UIFont.Base.Button.Subtitle.selected)
            public static var title = DNSUIFont(UIFont.Base.Button.Title.normal,
                                                disabled: UIFont.Base.Button.Title.disabled,
                                                focused: UIFont.Base.Button.Title.focused,
                                                highlighted: UIFont.Base.Button.Title.highlighted,
                                                selected: UIFont.Base.Button.Title.selected)
        }
        public enum Field {
            public static var alert = DNSUIFont(UIFont.Base.Field.alert)
            public static var counter = DNSUIFont(UIFont.Base.Field.counter)
            public static var text = DNSUIFont(UIFont.Base.Field.text)
            public static var title = DNSUIFont(UIFont.Base.Field.title)
        }
    }
}
