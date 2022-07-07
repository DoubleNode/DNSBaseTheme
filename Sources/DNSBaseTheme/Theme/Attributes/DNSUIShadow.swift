//
//  DNSUIShadow.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

open class DNSUIShadow: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(color)
        hasher.combine(offset.width)
        hasher.combine(offset.height)
        hasher.combine(opacity)
        hasher.combine(radius)
    }
    public static func == (lhs: DNSUIShadow, rhs: DNSUIShadow) -> Bool {
        guard lhs.color == rhs.color else { return false }
        guard lhs.offset == rhs.offset else { return false }
        guard lhs.opacity == rhs.opacity else { return false }
        guard lhs.radius == rhs.radius else { return false }
        return true
    }
    
    public var color: DNSUIColor
    public var offset: CGSize
    public var opacity: Float
    public var radius: Double
    
    required public init(color: DNSUIColor = DNSUIColor.Base.shadow,
                         offset: CGSize = CGSize(),
                         opacity: Float = 0,
                         radius: Double = 0) {
        self.color = color
        self.offset = offset
        self.opacity = opacity
        self.radius = radius
    }
}
