//
//  DNSUIStrikeThru+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

public extension DNSUIStrikeThru {
    enum Base {
        public enum Button {
            public static var subtitle = DNSUIStrikeThru(color: DNSUIColor.Base.Button.Subtitle.strikeThru,
                                                         enabled: DNSUIEnabled.Base.Button.Subtitle.strikeThru)
            public static var title = DNSUIStrikeThru(color: DNSUIColor.Base.Button.Title.strikeThru,
                                                      enabled: DNSUIEnabled.Base.Button.Title.strikeThru)
        }
        public enum Field {
            public static var alert = DNSUIStrikeThru(color: DNSUIColor.Base.Field.Alert.strikeThru,
                                                      enabled: DNSUIEnabled.Base.Field.Alert.strikeThru)
            public static var counter = DNSUIStrikeThru(color: DNSUIColor.Base.Field.Counter.strikeThru,
                                                        enabled: DNSUIEnabled.Base.Field.Counter.strikeThru)
            public static var text = DNSUIStrikeThru(color: DNSUIColor.Base.Field.Text.strikeThru,
                                                     enabled: DNSUIEnabled.Base.Field.Text.strikeThru)
            public static var title = DNSUIStrikeThru(color: DNSUIColor.Base.Field.Title.strikeThru,
                                                      enabled: DNSUIEnabled.Base.Field.Title.strikeThru)
        }
        public enum Label {
            public static var strikeThru = DNSUIStrikeThru(color: DNSUIColor.Base.Label.strikeThru,
                                                           enabled: DNSUIEnabled.Base.Label.strikeThru)
        }
    }
}
