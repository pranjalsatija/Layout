//
//  Utilities.swift
//  Island
//
//  Created by Pranjal Satija on 11/21/18.
//  Copyright © 2018 Pranjal Satija. All rights reserved.
//

import UIKit

@objc public extension NSLayoutAnchor {
    func lessThanOrEqualTo(_ other: NSLayoutAnchor, priority: UILayoutPriority = .required, constant: CGFloat = 0) {
        let constraint = self.constraint(lessThanOrEqualTo: other, constant: constant)
        constraint.priority = priority
        constraint.constant = constant
        constraint.isActive = true
    }

    func equals(_ other: NSLayoutAnchor, priority: UILayoutPriority = .required, constant: CGFloat = 0) {
        let constraint = self.constraint(equalTo: other, constant: constant)
        constraint.priority = priority
        constraint.constant = constant
        constraint.isActive = true
    }

    func greaterThanOrEqualTo(_ other: NSLayoutAnchor, priority: UILayoutPriority = .required, constant: CGFloat = 0) {
        let constraint = self.constraint(greaterThanOrEqualTo: other, constant: constant)
        constraint.priority = priority
        constraint.constant = constant
        constraint.isActive = true
    }
}

@objc public extension NSLayoutDimension {
    func lessThanOrEqualTo(_ constant: CGFloat, priority: UILayoutPriority = .required) {
        let constraint = self.constraint(lessThanOrEqualToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
    }

    func equals(_ constant: CGFloat, priority: UILayoutPriority = .required) {
        let constraint = self.constraint(equalToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
    }

    func greaterThanOrEqualTo(_ constant: CGFloat, priority: UILayoutPriority = .required) {
        let constraint = self.constraint(greaterThanOrEqualToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
    }
}

public extension UIEdgeInsets {
    static func all(_ value: CGFloat) -> UIEdgeInsets {
        return UIEdgeInsets(top: value, left: value, bottom: value, right: value)
    }
}

public extension UIView {
    func layout(builder: (LayoutProvider) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        builder(self)
    }
}
