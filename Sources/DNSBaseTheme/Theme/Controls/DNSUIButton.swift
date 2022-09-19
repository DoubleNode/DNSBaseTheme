//
//  DNSUIButton.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//
//  Derived from work done by Paulo Silva
//  https://github.com/paulosilva/CustomUIView
//

import UIKit

@IBDesignable open class DNSUIButton: UIButton {
    public typealias ThemeStyle = DNSThemeButtonStyle
    public var style: DNSThemeStyle = ThemeStyle.default {
        didSet {
            guard oldValue != style else { return }
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

        if let style = style as? DNSThemeButtonStyle {
            self.updateForState(using: style)
            self.setTitleColor(style.titleStyle.color.normal, for: UIControl.State.normal)
            self.setTitleColor(style.titleStyle.color.disabled, for: UIControl.State.disabled)
            self.setTitleColor(style.titleStyle.color.focused, for: UIControl.State.focused)
            self.setTitleColor(style.titleStyle.color.highlighted, for: UIControl.State.highlighted)
            self.setTitleColor(style.titleStyle.color.selected, for: UIControl.State.selected)
            self.setTitleShadowColor(style.titleStyle.shadow.color.normal, for: UIControl.State.normal)
            self.setTitleShadowColor(style.titleStyle.shadow.color.disabled, for: UIControl.State.disabled)
            self.setTitleShadowColor(style.titleStyle.shadow.color.focused, for: UIControl.State.focused)
            self.setTitleShadowColor(style.titleStyle.shadow.color.highlighted, for: UIControl.State.highlighted)
            self.setTitleShadowColor(style.titleStyle.shadow.color.selected, for: UIControl.State.selected)
        }
    }

    public override var isEnabled: Bool {
        didSet {
            guard let style = style as? ThemeStyle else { return }
            self.updateForState(using: style)
        }
    }
    public override var isHighlighted: Bool {
        didSet {
            guard let style = style as? ThemeStyle else { return }
            self.updateForState(using: style)
        }
    }
    public override var isSelected: Bool {
        didSet {
            guard let style = style as? ThemeStyle else { return }
            self.updateForState(using: style)
        }
    }

    // MARK: - Private Variables -
    private let containerView = UIView()
    private var containerImageView = UIImageView()
    
// MARK: - Public Attributes -
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
        willSet {
            guard newValue != nil else { return }
            if containerView.backgroundColor != newValue {
                containerView.backgroundColor = newValue
            }
        }
        didSet {
            if containerView.backgroundColor != UIColor.clear {
                backgroundColor = nil
            }
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
    @IBInspectable open var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
            self.containerView.layer.shadowOffset = newValue
        }
    }
    @IBInspectable open var shadowColor: UIColor {
        get {
            return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
            self.layer.shadowColor = newValue.cgColor
            self.containerView.layer.shadowColor = newValue.cgColor
        }
    }
//    @IBInspectable var shadowColorFromImage: Bool = false {
//        didSet {
//            addShadowColorFromBackgroundImage()
//        }
//    }
    
    override open func prepareForInterfaceBuilder() {
        setupView()
        refreshViewLayout()
    }
    func setupView() {
        self.backgroundColor = self.backgroundColor
        self.clipsToBounds = self.clipsToBounds
        self.borderColor = self.borderColor
        self.borderWidth = self.borderWidth
        self.cornerRadius = self.cornerRadius
        self.shadowOpacity = self.shadowOpacity
        self.shadowRadius = self.shadowRadius
        self.shadowOffset = self.shadowOffset
        self.shadowColor = self.shadowColor
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
    }
    override open func layoutSubviews() {
        super.layoutSubviews()
        refreshViewLayout()
//        addShadowColorFromBackgroundImage()
        applyRadiusMaskFor()
    }
    
    // MARK: - Private Methods -
    private func refreshViewLayout() {
        // View
        self.layer.masksToBounds = false
        self.layer.cornerRadius = cornerRadius
        
        // Shadow
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
        
        // Container View
        self.sendSubviewToBack(self.containerView)
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
    
    private func addViewLayoutSubViews() {
        // add subViews
        self.insertSubview(self.containerView, at: 0)
        self.sendSubviewToBack(self.containerView)
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
