//
//  DNSThemeStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import UIKit

open class DNSThemeStyle: DNSDataTranslation, NSCopying {
    // MARK: - Properties -
    private func field(_ from: CodingKeys) -> String { return from.rawValue }
    public enum CodingKeys: String, CodingKey {
        case name, setName, backgroundColor, border
        case shadow, skeletonable, tintColor
    }

    open var name: String?
    open var setName: String?
    open var backgroundColor = DNSUIColor.Base.background
    open var border = DNSUIBorder.Base.default
    open var shadow = DNSUIShadow.Base.default
    open var skeletonable = DNSUIEnabled.Base.skeletonable
    open var tintColor = DNSUIColor.Base.tint

    open var fullName: String {
        let name = self.name ?? "default"
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            return "\(setName).\(name)"
        }
        return name
    }

    // MARK: - Initializers -
    override required public init() {
        super.init()
    }
    required public init(styleName: String?,
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

    // MARK: - DAO copy methods -
    public init(from object: DNSThemeStyle) {
        super.init()
        self.update(from: object)
    }
    open func update(from object: DNSThemeStyle) {
        self.name = object.name
        self.setName = object.setName
        // swiftlint:disable force_cast
        self.backgroundColor = object.backgroundColor.copy() as! DNSUIColor
        self.border = object.border.copy() as! DNSUIBorder
        self.shadow = object.shadow.copy() as! DNSUIShadow
        self.skeletonable = object.skeletonable.copy() as! DNSUIEnabled
        self.tintColor = object.tintColor.copy() as! DNSUIColor
        // swiftlint:enable force_cast
    }
    
    // MARK: - DAO translation methods -
    required public init?(from data: DNSDataDictionary) {
        super.init()
        guard !data.isEmpty else { return nil }
        _ = self.dao(from: data)
    }
    open func dao(from data: DNSDataDictionary) -> DNSThemeStyle {
        self.name = self.string(from: data[field(.name)] as Any?) ?? self.name
        self.setName = self.string(from: data[field(.setName)] as Any?) ?? self.setName
        self.backgroundColor = self.dnsUIColor(from: data[field(.backgroundColor)] as Any?) ?? self.backgroundColor
        self.border = self.dnsUIBorder(from: data[field(.border)] as Any?) ?? self.border
        self.shadow = self.dnsUIShadow(from: data[field(.shadow)] as Any?) ?? self.shadow
        self.skeletonable = self.dnsUIEnabled(from: data[field(.skeletonable)] as Any?) ?? self.skeletonable
        self.tintColor = self.dnsUIColor(from: data[field(.tintColor)] as Any?) ?? self.tintColor
        return self
    }
    open var asDictionary: DNSDataDictionary {
        let retval: DNSDataDictionary = [
            field(.name): name ?? "",
            field(.setName): setName ?? "",
            field(.backgroundColor): backgroundColor.asDictionary,
            field(.border): border.asDictionary,
            field(.shadow): shadow.asDictionary,
            field(.skeletonable): skeletonable.asDictionary,
            field(.tintColor): tintColor.asDictionary,
        ]
        return retval
    }

    // MARK: - NSCopying protocol methods -
    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = DNSThemeStyle(from: self)
        return copy
    }
    open func isDiffFrom(_ rhs: Any?) -> Bool {
        guard let rhs = rhs as? DNSThemeStyle else { return true }
        let lhs = self
        return lhs.name != rhs.name
            || lhs.setName != rhs.setName
            || lhs.backgroundColor != rhs.backgroundColor
            || lhs.border != rhs.border
            || lhs.shadow != rhs.shadow
            || lhs.tintColor != rhs.tintColor
    }

    // MARK: - Equatable protocol methods -
    static public func !=(lhs: DNSThemeStyle, rhs: DNSThemeStyle) -> Bool {
        lhs.isDiffFrom(rhs)
    }
    static public func ==(lhs: DNSThemeStyle, rhs: DNSThemeStyle) -> Bool {
        !lhs.isDiffFrom(rhs)
    }
}
