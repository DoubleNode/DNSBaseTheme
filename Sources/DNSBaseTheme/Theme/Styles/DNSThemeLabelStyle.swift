//
//  DNSThemeLabelStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import DNSCoreThreading
import UIKit

open class DNSThemeLabelStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeLabelStyle] = [:]
    public static var `default`: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeLabelStyle.default
    }
    public static var initThemesBlocks: [DNSBlock] = [
        DNSThemeLabelStyle.Base.createThemes,
    ]
    public static func initThemes(block: @escaping DNSBlock) {
        initThemesBlocks.append(block)
        initThemesBlocks.forEach { $0() }
    }

    // MARK: - Properties -
    private func field(_ from: CodingKeys) -> String { return from.rawValue }
    public enum CodingKeys: String, CodingKey {
        case color, font, paragraphStyle, strikeThru, zeplinLineHeight
    }

    open var color = DNSUIColor.Base.Label.text
    open var font = DNSUIFont.Base.label
    open var paragraphStyle = NSMutableParagraphStyle()
    open var strikeThru = DNSUIStrikeThru.Base.Label.strikeThru
    open var zeplinLineHeight: Double?
    
    // MARK: - Initializers -
    required public init() {
        super.init()
    }
    required public init(styleName: String?,
                         styleSetName: String? = "",
                         backgroundColor: DNSUIColor = DNSUIColor.Base.Label.background,
                         border: DNSUIBorder = DNSUIBorder.Base.label,
                         shadow: DNSUIShadow = DNSUIShadow.Base.Label.text,
                         skeletonable: DNSUIEnabled = DNSUIEnabled.Base.Label.skeletonable,
                         tintColor: DNSUIColor = DNSUIColor.Base.Label.tint) {
        self.color = DNSUIColor.Base.Label.text
        self.font = DNSUIFont.Base.label
        self.paragraphStyle = NSMutableParagraphStyle()
        self.strikeThru = DNSUIStrikeThru.Base.Label.strikeThru
        self.zeplinLineHeight = nil
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   skeletonable: skeletonable,
                   tintColor: tintColor)
        self.utilityUpdateCache()
    }
    required public init(styleName: String?,
                         styleSetName: String? = "",
                         color: DNSUIColor = DNSUIColor.Base.Label.text,
                         font: DNSUIFont = DNSUIFont.Base.label,
                         paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle(),
                         strikeThru: DNSUIStrikeThru = DNSUIStrikeThru.Base.Label.strikeThru,
                         zeplinLineHeight: Double? = nil,
                         shadow: DNSUIShadow = DNSUIShadow.Base.Label.text,
                         backgroundColor: DNSUIColor = DNSUIColor.Base.Label.background,
                         border: DNSUIBorder = DNSUIBorder.Base.label,
                         skeletonable: DNSUIEnabled = DNSUIEnabled.Base.Label.skeletonable,
                         tintColor: DNSUIColor = DNSUIColor.Base.Label.tint) {
        self.color = color
        self.font = font
        self.paragraphStyle = paragraphStyle
        self.strikeThru = strikeThru
        self.zeplinLineHeight = zeplinLineHeight
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   skeletonable: skeletonable,
                   tintColor: tintColor)
        self.utilityUpdateCache()
    }
    
    // MARK: - DAO copy methods -
    required public init(from object: DNSThemeLabelStyle) {
        super.init(from: object)
        self.update(from: object)
    }
    open func update(from object: DNSThemeLabelStyle) {
        super.update(from: object)
        self.zeplinLineHeight = object.zeplinLineHeight
        // swiftlint:disable force_cast
        self.color = object.color.copy() as! DNSUIColor
        self.font = object.font.copy() as! DNSUIFont
        self.paragraphStyle = object.paragraphStyle.mutableCopy() as! NSMutableParagraphStyle
        self.strikeThru = object.strikeThru.copy() as! DNSUIStrikeThru
        // swiftlint:enable force_cast
    }

    // MARK: - DAO translation methods -
    required public init?(from data: DNSDataDictionary) {
        guard !data.isEmpty else { return nil }
        super.init(from: data)
    }
    override open func dao(from data: DNSDataDictionary) -> DNSThemeLabelStyle {
        _ = super.dao(from: data)
        self.color = self.dnscolor(from: data[field(.color)] as Any?) ?? self.color
        self.font = self.dnsfont(from: data[field(.font)] as Any?) ?? self.font
//        self.paragraphStyle = self.dnsThemeLabelStyle(from: data[field(.paragraphStyle)] as Any?) ?? self.paragraphStyle
        self.strikeThru = self.dnsstrikethru(from: data[field(.strikeThru)] as Any?) ?? self.strikeThru
        self.zeplinLineHeight = self.double(from: data[field(.zeplinLineHeight)]as Any?) ?? self.zeplinLineHeight
        return self
    }
    override open var asDictionary: DNSDataDictionary {
        var retval = super.asDictionary
        retval.merge([
            field(.color): self.color.asDictionary,
            field(.font): self.font.asDictionary,
//            field(.paragraphStyle): self.paragraphStyle.asDictionary,
            field(.strikeThru): self.strikeThru.asDictionary,
            field(.zeplinLineHeight): self.zeplinLineHeight,
        ]) { (current, _) in current }
        return retval
    }

    // MARK: - NSCopying protocol methods -
    override open func copy(with zone: NSZone? = nil) -> Any {
        let copy = DNSThemeLabelStyle(from: self)
        return copy
    }
    override open func isDiffFrom(_ rhs: Any?) -> Bool {
        guard let rhs = rhs as? DNSThemeLabelStyle else { return true }
        guard !super.isDiffFrom(rhs) else { return true }
        let lhs = self
        return super.isDiffFrom(rhs)
            || lhs.color != rhs.color
            || lhs.font != rhs.font
            || lhs.paragraphStyle != rhs.paragraphStyle
            || lhs.strikeThru != rhs.strikeThru
            || lhs.zeplinLineHeight != rhs.zeplinLineHeight
    }

    // MARK: - Equatable protocol methods -
    static public func !=(lhs: DNSThemeLabelStyle, rhs: DNSThemeLabelStyle) -> Bool {
        lhs.isDiffFrom(rhs)
    }
    static public func ==(lhs: DNSThemeLabelStyle, rhs: DNSThemeLabelStyle) -> Bool {
        !lhs.isDiffFrom(rhs)
    }

    // MARK: - Utility methods -
    override open func utilityUpdateCache() {
        let name = self.name ?? "default"
        DNSThemeLabelStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeLabelStyle.themeStyles[fullName] = self
        }
    }
}
