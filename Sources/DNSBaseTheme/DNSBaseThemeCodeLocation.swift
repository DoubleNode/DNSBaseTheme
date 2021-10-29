//
//  DNSBaseThemeCodeLocation.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import DNSError

public extension DNSCodeLocation {
    typealias baseTheme = DNSBaseThemeCodeLocation
}
open class DNSBaseThemeCodeLocation: DNSCodeLocation {
    override open class var domainPreface: String { "com.doublenode.baseTheme." }
}
