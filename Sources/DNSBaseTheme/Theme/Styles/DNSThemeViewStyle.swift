//
//  DNSThemeViewStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import DNSCoreThreading
import UIKit

open class DNSThemeViewStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeViewStyle] = [:]
    public static var `default`: DNSThemeViewStyle = DNSThemeViewStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeViewStyle.default
    }
    public static var initThemesBlocks: [DNSBlock] = [
        DNSThemeViewStyle.Base.createThemes,
    ]
    public static func initThemes(block: @escaping DNSBlock) {
        initThemesBlocks.append(block)
        initThemesBlocks.forEach { $0() }
    }
    
    // MARK: - Properties -
    private func field(_ from: CodingKeys) -> String { return from.rawValue }
    public enum CodingKeys: String, CodingKey {
        case dummy
    }

    open var dummy = 0

    // MARK: - Initializers -
    required public init() {
        super.init()
    }
    required public init(styleName: String?,
                         styleSetName: String? = "",
                         backgroundColor: DNSUIColor = DNSUIColor.Base.background,
                         border: DNSUIBorder = DNSUIBorder.Base.default,
                         shadow: DNSUIShadow = DNSUIShadow.Base.default,
                         skeletonable: DNSUIEnabled = DNSUIEnabled.Base.skeletonable,
                         tintColor: DNSUIColor = DNSUIColor.Base.tint) {
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   skeletonable: skeletonable,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeViewStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeViewStyle.themeStyles[fullName] = self
        }
    }
    
    // MARK: - DAO copy methods -
    required public init(from object: DNSThemeViewStyle) {
        super.init(from: object)
        self.update(from: object)
    }
    open func update(from object: DNSThemeViewStyle) {
        super.update(from: object)
        self.dummy = object.dummy
    }

    // MARK: - DAO translation methods -
    required public init?(from data: DNSDataDictionary) {
        guard !data.isEmpty else { return nil }
        super.init(from: data)
    }
    override open func dao(from data: DNSDataDictionary) -> DNSThemeViewStyle {
        _ = super.dao(from: data)
        self.dummy = self.int(from: data[field(.dummy)] as Any?) ?? self.dummy
        return self
    }
    override open var asDictionary: DNSDataDictionary {
        var retval = super.asDictionary
        retval.merge([
            field(.dummy): self.dummy,
        ]) { (current, _) in current }
        return retval
    }

    // MARK: - NSCopying protocol methods -
    override open func copy(with zone: NSZone? = nil) -> Any {
        let copy = DNSThemeViewStyle(from: self)
        return copy
    }
    override open func isDiffFrom(_ rhs: Any?) -> Bool {
        guard let rhs = rhs as? DNSThemeViewStyle else { return true }
        guard !super.isDiffFrom(rhs) else { return true }
        let lhs = self
        return super.isDiffFrom(rhs)
            || lhs.dummy != rhs.dummy
    }

    // MARK: - Equatable protocol methods -
    static public func !=(lhs: DNSThemeViewStyle, rhs: DNSThemeViewStyle) -> Bool {
        lhs.isDiffFrom(rhs)
    }
    static public func ==(lhs: DNSThemeViewStyle, rhs: DNSThemeViewStyle) -> Bool {
        !lhs.isDiffFrom(rhs)
    }
}
