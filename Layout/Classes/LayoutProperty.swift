//
//  LayoutProperty.swift
//  Island
//
//  Created by Pranjal Satija on 11/21/18.
//  Copyright © 2018 Pranjal Satija. All rights reserved.
//

import UIKit

public struct LayoutProperty<T: NSObject>: LayoutConstrainable {
    public let anchor: NSLayoutAnchor<T>

    public init(_ anchor: NSLayoutAnchor<T>) {
        self.anchor = anchor
    }
}

public extension LayoutProperty {
    func lessThanOrEqualTo(_ other: LayoutProperty<T>, priority: UILayoutPriority = .required, constant: CGFloat = 0) {
        anchor.lessThanOrEqualTo(other.anchor, priority: priority, constant: constant)
    }

    func equals(_ other: LayoutProperty<T>, priority: UILayoutPriority = .required, constant: CGFloat = 0) {
        anchor.equals(other.anchor, priority: priority, constant: constant)
    }

    func greaterThanOrEqualTo(_ other: LayoutProperty<T>, priority: UILayoutPriority = .required, constant: CGFloat = 0) {
        anchor.greaterThanOrEqualTo(other.anchor, priority: priority, constant: constant)
    }
}

// The T: NSLayoutDimension guarantees that the cast will succeed.
// swiftlint:disable force_cast
public extension LayoutProperty where T: NSLayoutDimension {
    static func == (lhs: LayoutProperty<T>, rhs: CGFloat) {
        (lhs.anchor as! NSLayoutDimension).equals(rhs)
    }

    static func <= (lhs: LayoutProperty<T>, rhs: CGFloat) {
        (lhs.anchor as! NSLayoutDimension).lessThanOrEqualTo(rhs)
    }

    static func >= (lhs: LayoutProperty<T>, rhs: CGFloat) {
        (lhs.anchor as! NSLayoutDimension).greaterThanOrEqualTo(rhs)
    }
}

// swiftlint:enable force_cast
