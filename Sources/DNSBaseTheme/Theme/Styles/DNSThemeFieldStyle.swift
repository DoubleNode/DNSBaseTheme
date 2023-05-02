//
//  DNSThemeFieldStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import AnimatedField
import DNSCore
import DNSCoreThreading
import SFSymbol
import UIKit

open class DNSThemeFieldStyle: DNSThemeStyle {
    public static var themeStyles: [String: DNSThemeFieldStyle] = [:]
    public static var `default`: DNSThemeFieldStyle = DNSThemeFieldStyle.Base.default
    public static func themeStyle(named styleName: String) -> DNSThemeStyle {
        return themeStyles[styleName] ?? DNSThemeFieldStyle.default
    }
    public static var initThemesBlocks: [DNSBlock] = [
        DNSThemeFieldStyle.Base.createThemes,
    ]
    public static func initThemes(block: @escaping DNSBlock) {
        initThemesBlocks.append(block)
        initThemesBlocks.forEach { $0() }
    }

    // MARK: - Properties -
    private func field(_ from: CodingKeys) -> String { return from.rawValue }
    public enum CodingKeys: String, CodingKey {
        case alertStyle, counterStyle, textStyle, titleStyle
        case alertPosition, invalidCharacters, lineColor, pickerTextColor, placeholderColor
        case textFieldHeight, visibleOnImage, visibleOffImage
        case alertEnabled, alertFieldActive, alertLineActive, alertTitleActive
        case countDown, counterAnimation, counterEnabled, titleAlwaysVisible
    }

    open var alertStyle = DNSThemeLabelStyle.Base.Field.alert
    open var counterStyle = DNSThemeLabelStyle.Base.Field.counter
    open var textStyle = DNSThemeLabelStyle.Base.Field.text
    open var titleStyle = DNSThemeLabelStyle.Base.Field.title

    open var alertPosition = AnimatedFieldAlertPosition.bottom
    open var invalidCharacters = "`^¨"
    open var lineColor = DNSUIColor.Base.Field.line
    open var pickerTextColor = DNSUIColor.Base.Field.pickerText
    open var placeholderColor = DNSUIColor.Base.Field.placeholder
    open var textFieldHeight: CGFloat = 36.0
    open var visibleOnImage = UIImage(dnsSymbol: SFSymbol.eye)!
    open var visibleOffImage = UIImage(dnsSymbol: SFSymbol.Eye.slash)!

    open var alertEnabled = DNSUIEnabled(true)
    open var alertFieldActive = DNSUIEnabled(true)
    open var alertLineActive = DNSUIEnabled(true)
    open var alertTitleActive = DNSUIEnabled(true)
    open var countDown = DNSUIEnabled(false)
    open var counterAnimation = DNSUIEnabled(false)
    open var counterEnabled = DNSUIEnabled(false)
    open var titleAlwaysVisible = DNSUIEnabled(false)

    // MARK: - Initializers -
    required public init() {
        super.init()
    }
    required public init(styleName: String?,
                         styleSetName: String? = "",
                         backgroundColor: DNSUIColor = DNSUIColor.Base.Field.background,
                         border: DNSUIBorder = DNSUIBorder.Base.field,
                         shadow: DNSUIShadow = DNSUIShadow.Base.field,
                         skeletonable: DNSUIEnabled = DNSUIEnabled.Base.Field.skeletonable,
                         tintColor: DNSUIColor = DNSUIColor.Base.Field.tint) {
        self.alertStyle = DNSThemeLabelStyle.Base.Field.alert
        self.counterStyle = DNSThemeLabelStyle.Base.Field.counter
        self.textStyle = DNSThemeLabelStyle.Base.Field.text
        self.titleStyle = DNSThemeLabelStyle.Base.Field.title
        self.alertPosition = .bottom
        self.invalidCharacters = "`^¨"
        self.lineColor = DNSUIColor.Base.Field.line
        self.pickerTextColor = DNSUIColor.Base.Field.pickerText
        self.placeholderColor = DNSUIColor.Base.Field.placeholder
        self.textFieldHeight = 36.0
        self.visibleOnImage = UIImage(dnsSymbol: SFSymbol.eye)!
        self.visibleOffImage = UIImage(dnsSymbol: SFSymbol.Eye.slash)!
        self.alertEnabled = DNSUIEnabled(true)
        self.alertFieldActive = DNSUIEnabled(true)
        self.alertLineActive = DNSUIEnabled(true)
        self.alertTitleActive = DNSUIEnabled(true)
        self.countDown = DNSUIEnabled(false)
        self.counterAnimation = DNSUIEnabled(false)
        self.counterEnabled = DNSUIEnabled(false)
        self.titleAlwaysVisible = DNSUIEnabled(false)
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   skeletonable: skeletonable,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeFieldStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeFieldStyle.themeStyles[fullName] = self
        }
    }
    required public init(styleName: String?,
                         styleSetName: String? = "",
                         alertStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.alert,
                         counterStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.counter,
                         textStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.text,
                         titleStyle: DNSThemeLabelStyle = DNSThemeLabelStyle.Base.Field.title,
                         alertPosition: AnimatedFieldAlertPosition = .bottom,
                         invalidCharacters: String = "`^¨",
                         lineColor: DNSUIColor = DNSUIColor.Base.Field.line,
                         pickerTextColor: DNSUIColor = DNSUIColor.Base.Field.pickerText,
                         placeholderColor: DNSUIColor = DNSUIColor.Base.Field.placeholder,
                         textFieldHeight: CGFloat = 36.0,
                         visibleOnImage: UIImage = UIImage(dnsSymbol: SFSymbol.eye)!,
                         visibleOffImage: UIImage = UIImage(dnsSymbol: SFSymbol.Eye.slash)!,
                         alertEnabled: DNSUIEnabled = DNSUIEnabled(true),
                         alertFieldActive: DNSUIEnabled = DNSUIEnabled(true),
                         alertLineActive: DNSUIEnabled = DNSUIEnabled(true),
                         alertTitleActive: DNSUIEnabled = DNSUIEnabled(true),
                         countDown: DNSUIEnabled = DNSUIEnabled(false),
                         counterAnimation: DNSUIEnabled = DNSUIEnabled(false),
                         counterEnabled: DNSUIEnabled = DNSUIEnabled(false),
                         titleAlwaysVisible: DNSUIEnabled = DNSUIEnabled(false),
                         backgroundColor: DNSUIColor = DNSUIColor.Base.Field.background,
                         border: DNSUIBorder = DNSUIBorder.Base.field,
                         shadow: DNSUIShadow = DNSUIShadow.Base.field,
                         skeletonable: DNSUIEnabled = DNSUIEnabled.Base.Field.skeletonable,
                         tintColor: DNSUIColor = DNSUIColor.Base.Field.tint) {
        self.alertStyle = alertStyle
        self.counterStyle = counterStyle
        self.textStyle = textStyle
        self.titleStyle = titleStyle
        self.alertPosition = alertPosition
        self.invalidCharacters = invalidCharacters
        self.lineColor = lineColor
        self.pickerTextColor = pickerTextColor
        self.placeholderColor = placeholderColor
        self.textFieldHeight = textFieldHeight
        self.visibleOnImage = visibleOnImage
        self.visibleOffImage = visibleOffImage
        self.alertEnabled = alertEnabled
        self.alertFieldActive = alertFieldActive
        self.alertLineActive = alertLineActive
        self.alertTitleActive = alertTitleActive
        self.countDown = countDown
        self.counterAnimation = counterAnimation
        self.counterEnabled = counterEnabled
        self.titleAlwaysVisible = titleAlwaysVisible
        super.init(styleName: styleName,
                   styleSetName: styleSetName,
                   backgroundColor: backgroundColor,
                   border: border,
                   shadow: shadow,
                   skeletonable: skeletonable,
                   tintColor: tintColor)
        let name = self.name ?? "default"
        DNSThemeFieldStyle.themeStyles[name] = self
        let setName = self.setName ?? "Base"
        if !setName.isEmpty {
            let fullName = "\(setName).\(name)"
            DNSThemeFieldStyle.themeStyles[fullName] = self
        }
    }
    
    // MARK: - DAO copy methods -
    required public init(from object: DNSThemeFieldStyle) {
        super.init(from: object)
        self.update(from: object)
    }
    open func update(from object: DNSThemeFieldStyle) {
        super.update(from: object)
        self.alertPosition = object.alertPosition
        self.invalidCharacters = object.invalidCharacters
        self.textFieldHeight = object.textFieldHeight
        // swiftlint:disable force_cast
        self.alertStyle = object.alertStyle.copy() as! DNSThemeLabelStyle
        self.counterStyle = object.counterStyle.copy() as! DNSThemeLabelStyle
        self.textStyle = object.textStyle.copy() as! DNSThemeLabelStyle
        self.titleStyle = object.titleStyle.copy() as! DNSThemeLabelStyle
        self.lineColor = object.lineColor.copy() as! DNSUIColor
        self.pickerTextColor = object.pickerTextColor.copy() as! DNSUIColor
        self.placeholderColor = object.placeholderColor.copy() as! DNSUIColor
        self.visibleOnImage = object.visibleOnImage.copy() as! UIImage
        self.visibleOffImage = object.visibleOffImage.copy() as! UIImage
        self.alertEnabled = object.alertEnabled.copy() as! DNSUIEnabled
        self.alertFieldActive = object.alertFieldActive.copy() as! DNSUIEnabled
        self.alertLineActive = object.alertLineActive.copy() as! DNSUIEnabled
        self.alertTitleActive = object.alertTitleActive.copy() as! DNSUIEnabled
        self.countDown = object.countDown.copy() as! DNSUIEnabled
        self.counterAnimation = object.counterAnimation.copy() as! DNSUIEnabled
        self.counterEnabled = object.counterEnabled.copy() as! DNSUIEnabled
        self.titleAlwaysVisible = object.titleAlwaysVisible.copy() as! DNSUIEnabled
        // swiftlint:enable force_cast
    }

    // MARK: - DAO translation methods -
    required public init?(from data: DNSDataDictionary) {
        guard !data.isEmpty else { return nil }
        super.init(from: data)
    }
    override open func dao(from data: DNSDataDictionary) -> DNSThemeFieldStyle {
        _ = super.dao(from: data)
        self.alertStyle = self.dnsThemeLabelStyle(from: data[field(.alertStyle)] as Any?) ?? self.alertStyle
        self.counterStyle = self.dnsThemeLabelStyle(from: data[field(.counterStyle)] as Any?) ?? self.counterStyle
        self.textStyle = self.dnsThemeLabelStyle(from: data[field(.textStyle)] as Any?) ?? self.textStyle
        self.titleStyle = self.dnsThemeLabelStyle(from: data[field(.titleStyle)] as Any?) ?? self.titleStyle
        let alertPositionData = self.string(from: data[field(.alertPosition)]as Any?) ?? "bottom"
        self.alertPosition = alertPositionData == "bottom" ? .bottom : .top
        self.invalidCharacters = self.string(from: data[field(.invalidCharacters)]as Any?) ?? self.invalidCharacters
        self.lineColor = self.dnsUIColor(from: data[field(.lineColor)] as Any?) ?? self.lineColor
        self.pickerTextColor = self.dnsUIColor(from: data[field(.pickerTextColor)] as Any?) ?? self.pickerTextColor
        self.placeholderColor = self.dnsUIColor(from: data[field(.placeholderColor)] as Any?) ?? self.placeholderColor
        self.textFieldHeight = CGFloat(self.float(from: data[field(.textFieldHeight)]as Any?) ?? Float(self.textFieldHeight))
        let visibleOnImageData = self.string(from: data[field(.visibleOnImage)]as Any?) ?? "eye"
        self.visibleOnImage = UIImage(systemName: visibleOnImageData) ?? self.visibleOnImage
        let visibleOffImageData = self.string(from: data[field(.visibleOffImage)]as Any?) ?? "eye.slash"
        self.visibleOffImage = UIImage(systemName: visibleOffImageData) ?? self.visibleOffImage
        self.alertEnabled = self.dnsUIEnabled(from: data[field(.alertEnabled)] as Any?) ?? self.alertEnabled
        self.alertFieldActive = self.dnsUIEnabled(from: data[field(.alertFieldActive)] as Any?) ?? self.alertFieldActive
        self.alertLineActive = self.dnsUIEnabled(from: data[field(.alertLineActive)] as Any?) ?? self.alertLineActive
        self.alertTitleActive = self.dnsUIEnabled(from: data[field(.alertTitleActive)] as Any?) ?? self.alertTitleActive
        self.countDown = self.dnsUIEnabled(from: data[field(.countDown)] as Any?) ?? self.countDown
        self.counterAnimation = self.dnsUIEnabled(from: data[field(.counterAnimation)] as Any?) ?? self.counterAnimation
        self.counterEnabled = self.dnsUIEnabled(from: data[field(.counterEnabled)] as Any?) ?? self.counterEnabled
        self.titleAlwaysVisible = self.dnsUIEnabled(from: data[field(.titleAlwaysVisible)] as Any?) ?? self.titleAlwaysVisible
        return self
    }
    override open var asDictionary: DNSDataDictionary {
        var retval = super.asDictionary
        retval.merge([
            field(.alertStyle): self.alertStyle.asDictionary,
            field(.counterStyle): self.counterStyle.asDictionary,
            field(.textStyle): self.textStyle.asDictionary,
            field(.titleStyle): self.titleStyle.asDictionary,
            field(.alertPosition): self.alertPosition == .bottom ? "bottom" : "top",
            field(.invalidCharacters): self.invalidCharacters,
            field(.lineColor): self.lineColor.asDictionary,
            field(.pickerTextColor): self.pickerTextColor.asDictionary,
            field(.placeholderColor): self.placeholderColor.asDictionary,
            field(.textFieldHeight): self.textFieldHeight,
//            field(.visibleOnImage): self.visibleOnImage,
//            field(.visibleOffImage): self.visibleOffImage,
            field(.alertEnabled): self.alertEnabled.asDictionary,
            field(.alertFieldActive): self.alertFieldActive.asDictionary,
            field(.alertLineActive): self.alertLineActive.asDictionary,
            field(.alertTitleActive): self.alertTitleActive.asDictionary,
            field(.countDown): self.countDown.asDictionary,
            field(.counterAnimation): self.counterAnimation.asDictionary,
            field(.counterEnabled): self.counterEnabled.asDictionary,
            field(.titleAlwaysVisible): self.titleAlwaysVisible.asDictionary,
        ]) { (current, _) in current }
        return retval
    }

    // MARK: - NSCopying protocol methods -
    override open func copy(with zone: NSZone? = nil) -> Any {
        let copy = DNSThemeFieldStyle(from: self)
        return copy
    }
    override open func isDiffFrom(_ rhs: Any?) -> Bool {
        guard let rhs = rhs as? DNSThemeFieldStyle else { return true }
        guard !super.isDiffFrom(rhs) else { return true }
        let lhs = self
        return super.isDiffFrom(rhs)
            || lhs.alertStyle != rhs.alertStyle
            || lhs.counterStyle != rhs.counterStyle
            || lhs.textStyle != rhs.textStyle
            || lhs.titleStyle != rhs.titleStyle
            || lhs.alertPosition != rhs.alertPosition
            || lhs.invalidCharacters != rhs.invalidCharacters
            || lhs.lineColor != rhs.lineColor
            || lhs.pickerTextColor != rhs.pickerTextColor
            || lhs.placeholderColor != rhs.placeholderColor
            || lhs.textFieldHeight != rhs.textFieldHeight
//            || lhs.visibleOnImage != rhs.visibleOnImage
//            || lhs.visibleOffImage != rhs.visibleOffImage
            || lhs.alertEnabled != rhs.alertEnabled
            || lhs.alertFieldActive != rhs.alertFieldActive
            || lhs.alertLineActive != rhs.alertLineActive
            || lhs.alertTitleActive != rhs.alertTitleActive
            || lhs.countDown != rhs.countDown
            || lhs.counterAnimation != rhs.counterAnimation
            || lhs.counterEnabled != rhs.counterEnabled
            || lhs.titleAlwaysVisible != rhs.titleAlwaysVisible
    }

    // MARK: - Equatable protocol methods -
    static public func !=(lhs: DNSThemeFieldStyle, rhs: DNSThemeFieldStyle) -> Bool {
        lhs.isDiffFrom(rhs)
    }
    static public func ==(lhs: DNSThemeFieldStyle, rhs: DNSThemeFieldStyle) -> Bool {
        !lhs.isDiffFrom(rhs)
    }
}
