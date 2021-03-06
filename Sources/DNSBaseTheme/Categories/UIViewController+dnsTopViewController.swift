//
//  UIViewController+dnsTopViewController.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

public extension UIViewController {
    var dnsTopViewController: UIViewController {
        switch self {
        case is UINavigationController:
            // swiftlint:disable:next force_cast
            return (self as! UINavigationController).visibleViewController?.dnsTopViewController ?? self
        case is UITabBarController:
            // swiftlint:disable:next force_cast
            return (self as! UITabBarController).selectedViewController?.dnsTopViewController ?? self
        default:
            return presentedViewController?.dnsTopViewController ?? self
        }
    }
}
