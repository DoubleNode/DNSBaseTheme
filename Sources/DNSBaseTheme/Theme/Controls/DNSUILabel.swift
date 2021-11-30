//
//  DNSUILabel.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//
//  Derived from work done by Paulo Silva
//  https://github.com/paulosilva/CustomUIView
//

import UIKit

@IBDesignable open class DNSUILabel: UILabel {
    public typealias ThemeStyle = DNSThemeLabelStyle
    public var style: DNSThemeStyle = ThemeStyle.default {
        didSet {
            guard oldValue.name != style.name else { return }
            self.utilityApply(style)
            self.styleName = style.name ?? ""
        }
    }
    @IBInspectable open var styleName: String = "" {
        didSet {
            guard oldValue != styleName else { return }
            self.utilityApply(styleName)
        }
    }
    
    // MARK: - Utility Methods -
    open func utilityApply(_ styleName: String) {
        self.style = ThemeStyle.themeStyle(named: styleName)
    }
    open func utilityApply(_ style: DNSThemeStyle) {
        self.backgroundColor = style.backgroundColor.normal
        self.borderColor = style.border.color.normal
        self.borderWidth = CGFloat(style.border.width)
        self.cornerRadius = CGFloat(style.border.cornerRadius)
        self.cornerTopLeftRadius = CGFloat(style.border.cornerTopLeftRadius)
        self.cornerTopRightRadius = CGFloat(style.border.cornerTopRightRadius)
        self.cornerBottomLeftRadius = CGFloat(style.border.cornerBottomLeftRadius)
        self.cornerBottomRightRadius = CGFloat(style.border.cornerBottomRightRadius)
        self.cornerRadiusMulti = style.border.cornerRadiusMulti
        self.shadowColor = style.shadow.color.normal
        self.shadowOffset = style.shadow.offset
        self.shadowOpacity = Float(style.shadow.opacity)
        self.shadowRadius = style.shadow.radius
        self.tintColor = style.tintColor.normal

        if let style = style as? DNSThemeLabelStyle {
            self.font = style.font.normal
            self.paragraphStyle = style.paragraphStyle
            self.strikeThru = style.strikeThru
            self.strikeThruColor = style.strikeThruColor.normal
            self.strikeThruStyle = style.strikeThruStyle
            self.textColor = style.color.normal
            if style.zeplinLineHeight != nil {
                self.zeplinLineHeight = style.zeplinLineHeight!
            }
        }
    }
    open func utilityRedrawAttributeString() {
        let attributeString =  NSMutableAttributedString(string: self.text ?? "")
        if self.strikeThru {
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle,
                                         value: self.strikeThruStyle.rawValue,
                                         range: NSMakeRange(0, attributeString.length))
            attributeString.addAttribute(NSAttributedString.Key.strikethroughColor,
                                         value: self.strikeThruColor,
                                         range: NSMakeRange(0, attributeString.length))
        }
        attributeString.addAttribute(NSAttributedString.Key.paragraphStyle,
                                     value: self.paragraphStyle,
                                     range: NSMakeRange(0, attributeString.length))
        self.attributedText = attributeString
    }

    // MARK: - Private Variables -
    private let containerView = UIView()
    private var containerImageView = UIImageView()
    private var paragraphStyle = NSMutableParagraphStyle()
    // MARK: - Public Attributes -
    override open var text: String? {
        didSet {
            self.utilityRedrawAttributeString()
        }
    }
    @IBInspectable public var zeplinLineHeight: CGFloat {
        get {
            let fontOffset = self.font.lineHeight - self.font.pointSize
            return self.paragraphStyle.lineSpacing + self.font.pointSize + fontOffset
        }
        set {
            let fontOffset = self.font.lineHeight - self.font.pointSize
            self.paragraphStyle.lineSpacing = newValue - self.font.pointSize - fontOffset
            self.utilityRedrawAttributeString()
        }
    }
    // MARK: - Public Attributes (UIView) -
//    @IBInspectable public var backgroundImage: UIImage? {
//        get {
//            return self.containerImageView.image
//        }
//        set {
////            addShadowColorFromBackgroundImage()
//            self.containerImageView.image = newValue
//        }
//    }
    override open var backgroundColor: UIColor? {
        didSet {
            guard let newValue = backgroundColor else { return }
            containerView.backgroundColor = newValue
            if newValue != UIColor.clear { backgroundColor = nil }
        }
    }
    override open var clipsToBounds: Bool {
        didSet {
            let newClip = clipsToBounds
            containerView.clipsToBounds = newClip
            containerImageView.clipsToBounds = newClip
        }
    }
    @IBInspectable open var borderColor: UIColor {
        get {
            return UIColor(cgColor: self.containerView.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue.cgColor
            self.containerView.layer.borderColor = newValue.cgColor
        }
    }
    @IBInspectable open var borderWidth: CGFloat {
        get {
            return self.containerView.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
            self.containerView.layer.borderWidth = newValue
        }
    }
    @IBInspectable open var cornerRadius: CGFloat {
        get {
            return self.containerView.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            self.containerView.layer.cornerRadius = newValue
        }
    }
    @IBInspectable open var cornerRadiusMulti: Bool = false
    @IBInspectable open var cornerTopLeftRadius: CGFloat = 0 {
        didSet { setNeedsLayout() }
    }
    @IBInspectable open var cornerTopRightRadius: CGFloat = 0 {
        didSet { setNeedsLayout() }
    }
    @IBInspectable open var cornerBottomLeftRadius: CGFloat = 0 {
        didSet { setNeedsLayout() }
    }
    @IBInspectable open var cornerBottomRightRadius: CGFloat = 0 {
        didSet { setNeedsLayout() }
    }
    @IBInspectable open var shadowOpacity: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
            self.containerView.layer.shadowOpacity = newValue
        }
    }
    @IBInspectable open var shadowRadius: CGFloat {
        get {
            return self.layer.shadowRadius
        }
        set {
            self.layer.shadowRadius = newValue
            self.containerView.layer.shadowRadius = newValue
        }
    }
    @IBInspectable override open var shadowOffset: CGSize {
        didSet {
            self.containerView.layer.shadowOffset = shadowOffset
        }
    }
    @IBInspectable override open var shadowColor: UIColor? {
        didSet {
            guard let shadowColor = shadowColor else { return }
            self.containerView.layer.shadowColor = shadowColor.cgColor
        }
    }
//    @IBInspectable var shadowColorFromImage: Bool = false {
//        didSet {
//            addShadowColorFromBackgroundImage()
//        }
//    }
    @IBInspectable open var strikeThru: Bool = false {
        didSet {
            self.utilityRedrawAttributeString()
        }
    }
    @IBInspectable open var strikeThruColor: UIColor = UIColor.red {
        didSet {
            self.utilityRedrawAttributeString()
        }
    }
    @IBInspectable open var strikeThruStyle: NSUnderlineStyle = NSUnderlineStyle.single {
        didSet {
            self.utilityRedrawAttributeString()
        }
    }

    override open func prepareForInterfaceBuilder() {
        setupView()
    }
    func setupView() {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowColor = shadowColor?.cgColor
        self.layer.shadowOffset = shadowOffset
        applyRadiusMaskFor()
    }
    
    // MARK: - Life Cycle -
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        addViewLayoutSubViews()
        refreshViewLayout()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        addViewLayoutSubViews()
        refreshViewLayout()
    }
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        refreshViewLayout()
//        addShadowColorFromBackgroundImage()
        self.utilityRedrawAttributeString()
    }
    override open func layoutSubviews() {
        super.layoutSubviews()
        refreshViewLayout()
//        addShadowColorFromBackgroundImage()
        applyRadiusMaskFor()
        self.utilityRedrawAttributeString()
    }
    
    public func refreshViewLayout() {
        // View
        self.layer.masksToBounds = false
        self.layer.cornerRadius = cornerRadius
        
        // Container View
        self.containerView.clipsToBounds = self.clipsToBounds
        self.containerView.layer.masksToBounds = true
        self.containerView.layer.cornerRadius = cornerRadius
        
        // Image View
        self.containerImageView.backgroundColor = UIColor.clear
//self.containerImageView.image = backgroundImage
        self.containerImageView.layer.cornerRadius = cornerRadius
        self.containerImageView.layer.masksToBounds = true
        self.containerImageView.clipsToBounds = self.clipsToBounds
        self.containerImageView.contentMode = .redraw
        self.containerImageView.isUserInteractionEnabled = false
    }
    // MARK: - Private Methods -
    private func addViewLayoutSubViews() {
        // add subViews
        self.insertSubview(self.containerView, at: 0)
        self.containerView.addSubview(self.containerImageView)
        
        self.containerView.isUserInteractionEnabled = false
        self.containerImageView.isUserInteractionEnabled = false
        
        // add image constraints
        self.containerImageView.translatesAutoresizingMaskIntoConstraints = false
        self.containerImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        self.containerImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        self.containerImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        self.containerImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        // add view constraints
        self.containerView.translatesAutoresizingMaskIntoConstraints = false
        self.containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        self.containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        self.containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        self.containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
//    private func addShadowColorFromBackgroundImage() {
//        // Get the averageColor from the image for set the Shadow Color
//        if shadowColorFormImage {
//            let week = self
//            DispatchQueue.main.async {
//                week.shadowColor = (week.containerImageView.image?.averageColor)!
//            }
//        }
//    }
    private func applyRadiusMaskFor() {
        guard cornerRadiusMulti else { return }
        
        let path = UIBezierPath(shouldRoundRect: bounds,
                                topLeftRadius: cornerTopLeftRadius,
                                topRightRadius: cornerTopRightRadius,
                                bottomLeftRadius: cornerBottomLeftRadius,
                                bottomRightRadius: cornerBottomRightRadius)
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        layer.mask = shape
    }
}
