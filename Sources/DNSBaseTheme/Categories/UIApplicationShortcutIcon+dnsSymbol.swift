//
//  UIApplicationShortcutIcon+dnsSymbol.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import SFSymbol
import UIKit

public extension UIApplicationShortcutIcon {
    convenience init?<T: RawRepresentable>(dnsSymbol: T) where T.RawValue == String {
        self.init(systemImageName: dnsSymbol.rawValue)
    }
}
