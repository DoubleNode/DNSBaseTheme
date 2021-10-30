//
//  UIFont+dnsFromStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

public extension UIFont {
    public class func dnsFrom(_ font: DNSUIFont) -> UIFont {
        return dnsCustom(with: font.fontName, and: CGFloat(font.size))
    }
}
