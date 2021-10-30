//
//  UIApplication+dnsVisibleViewController.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2021 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCoreThreading
import UIKit

public extension UIApplication {
    public var dnsVisibleViewController : UIViewController? {
        var retval: UIViewController?
        DNSUIThread.run(.synchronously) {
            retval = self.keyWindow?.rootViewController?.dnsTopViewController
        }
        return retval
    }
}
