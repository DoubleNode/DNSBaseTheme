//
//  UIAlertController+dnsShowHide.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSBaseTheme
//
//  Created by Darren Ehlers.
//  Copyright © 2020 - 2016 DoubleNode.com. All rights reserved.
//

import UIKit

public extension UIAlertController {
    func dnsShow(window: UIWindow) {
        guard !self.isBeingPresented else { return }
        window.makeKeyAndVisible()
        window.rootViewController?.present(self, animated: true, completion: nil)
    }
    func dnsHide(window: UIWindow) {
        window.isHidden = true
    }
}
