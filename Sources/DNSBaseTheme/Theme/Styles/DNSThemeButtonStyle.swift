//
//  DNSThemeButtonStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import DNSCoreThreading
import UIKit

open class DNSThemeButtonStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeButtonStyle] = [:]
    public static var `default`: DNSThemeButtonStyle = DNSThemeButtonStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeButtonStyle.default
    }
    public static var initThemesBlocks: [DNSBlock] = [
        DNSThemeButtonStyle.Base.createThemes,
    ]
    public static func initThemes(block: @escaping DNSBlock) {
        initThemesBlocks.append(block)
        initThemesBlocks.forEach { $0() }
    }

    // MARK: - Properties -
    private func field(_ from: CodingKeys) -> String { return from.rawValue }
    public enum CodingKeys: String, CodingKey {
        case subtitleStyle, titleStyle
    }

    open var subtitleStyle = DNSThemeLabelStyle.Base.default
    open var titleStyle = DNSThemeLabelStyle.Base.default

    // MARK: - Initializers -
    required public init() {
        super.init()
    }
    required public init(styleName: String?,
                         styleSetName: String? = "",
                         backgroundColor: DNSUIColor = DNSUIColor.Base.Button.background,
                         border: DNSUIBorder = DNSUIBorder.Base.button,
                         shadow: DNSUIShadow = DNSUIShadow.Base.button,
                         skeletonable: DNSUIEnabled = DNSUIEnabled.Base.Button.skeletonable,
                         tintColor: DNSUIColor = DNSUIColor.Base.Button.tint) {
        self.titleStyle = DNSThemeLabelStyle.Base.Button.title
        self.subtitleStyle = DNSThemeLabelStyle.Base.Button.subtitle
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   skeletonable: skeletonable,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeButtonStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeButtonStyle.themeStyles[fullName] = self
        }
    }
    required public init(styleName: String?,
                         styleSetName: String? = "",
                         titleStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Button.title,
                         subtitleStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Button.subtitle,
                         backgroundColor: DNSUIColor = DNSUIColor.Base.Button.background,
                         border: DNSUIBorder = DNSUIBorder.Base.button,
                         shadow: DNSUIShadow = DNSUIShadow.Base.button,
                         skeletonable: DNSUIEnabled = DNSUIEnabled.Base.Button.skeletonable,
                         tintColor: DNSUIColor = DNSUIColor.Base.Button.tint) {
        self.titleStyle = titleStyle
        self.subtitleStyle = subtitleStyle
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   skeletonable: skeletonable,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeButtonStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeButtonStyle.themeStyles[fullName] = self
        }
    }
    
    // MARK: - DAO copy methods -
    required public init(from object: DNSThemeButtonStyle) {
        super.init(from: object)
        self.update(from: object)
    }
    open func update(from object: DNSThemeButtonStyle) {
        super.update(from: object)
        // swiftlint:disable force_cast
        self.subtitleStyle = object.subtitleStyle.copy() as! DNSThemeLabelStyle
        self.titleStyle = object.titleStyle.copy() as! DNSThemeLabelStyle
        // swiftlint:enable force_cast
    }

    // MARK: - DAO translation methods -
    required public init?(from data: DNSDataDictionary) {
        guard !data.isEmpty else { return nil }
        super.init(from: data)
    }
    override open func dao(from data: DNSDataDictionary) -> DNSThemeButtonStyle {
        _ = super.dao(from: data)
        self.subtitleStyle = self.dnsThemeLabelStyle(from: data[field(.subtitleStyle)] as Any?) ?? self.subtitleStyle
        self.titleStyle = self.dnsThemeLabelStyle(from: data[field(.titleStyle)] as Any?) ?? self.titleStyle
        return self
    }
    override open var asDictionary: DNSDataDictionary {
        var retval = super.asDictionary
        retval.merge([
            field(.subtitleStyle): self.subtitleStyle.asDictionary,
            field(.titleStyle): self.titleStyle.asDictionary,
        ]) { (current, _) in current }
        return retval
    }

    // MARK: - NSCopying protocol methods -
    override open func copy(with zone: NSZone? = nil) -> Any {
        let copy = DNSThemeButtonStyle(from: self)
        return copy
    }
    override open func isDiffFrom(_ rhs: Any?) -> Bool {
        guard let rhs = rhs as? DNSThemeButtonStyle else { return true }
        guard !super.isDiffFrom(rhs) else { return true }
        let lhs = self
        return super.isDiffFrom(rhs)
            || lhs.name != rhs.name
    }

    // MARK: - Equatable protocol methods -
    static public func !=(lhs: DNSThemeButtonStyle, rhs: DNSThemeButtonStyle) -> Bool {
        lhs.isDiffFrom(rhs)
    }
    static public func ==(lhs: DNSThemeButtonStyle, rhs: DNSThemeButtonStyle) -> Bool {
        !lhs.isDiffFrom(rhs)
    }
}
