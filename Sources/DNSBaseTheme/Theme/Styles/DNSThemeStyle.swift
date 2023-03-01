//
//  DNSThemeStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

open class DNSThemeStyle: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(setName)
        hasher.combine(backgroundColor)
        hasher.combine(border)
        hasher.combine(shadow)
        hasher.combine(tintColor)
    }
    public static func == (lhs: DNSThemeStyle, rhs: DNSThemeStyle) -> Bool {
        guard lhs.name == rhs.name else { return false }
        guard lhs.setName == rhs.setName else { return false }
        guard lhs.backgroundColor == rhs.backgroundColor else { return false }
        guard lhs.border == rhs.border else { return false }
        guard lhs.shadow == rhs.shadow else { return false }
        guard lhs.tintColor == rhs.tintColor else { return false }
        return true
    }
    
    public var name: String?
    public var fullName: String {
        let name = self.name ?? "default"
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            return "\(setName).\(name)"
        }
        return name
    }
    public var setName: String?
    public var backgroundColor: DNSUIColor
    public var border: DNSUIBorder
    public var shadow: DNSUIShadow
    public var skeletonable: DNSUIEnabled
    public var tintColor: DNSUIColor
    
    public init(styleName: String?,
                styleSetName: String? = "",
                backgroundColor: DNSUIColor = DNSUIColor.Base.background,
                border: DNSUIBorder = DNSUIBorder.Base.default,
                shadow: DNSUIShadow = DNSUIShadow.Base.default,
                skeletonable: DNSUIEnabled = DNSUIEnabled.Base.skeletonable,
                tintColor: DNSUIColor = DNSUIColor.Base.tint) {
        self.name = styleName
        self.setName = styleSetName
        self.backgroundColor = backgroundColor
        self.border = border
        self.shadow = shadow
        self.skeletonable = skeletonable
        self.tintColor = tintColor
    }
}
