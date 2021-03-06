//
//  UIImage+dnsSystemSymbol.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import SFSymbol
import UIKit

public extension UIImage {
    convenience init(dnsSystemSymbol symbol: SFSymbol) {
        self.init(systemName: symbol.rawValue)!
    }
}
