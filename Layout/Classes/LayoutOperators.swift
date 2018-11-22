//
//  Operators.swift
//  Island
//
//  Created by Pranjal Satija on 11/21/18.
//  Copyright © 2018 Pranjal Satija. All rights reserved.
//

import UIKit

public typealias NSLayoutAnchorWithOffset<T: NSObject> = (anchor: NSLayoutAnchor<T>, constant: CGFloat)
public typealias LayoutPropertyWithOffset<T: NSObject> = (property: LayoutProperty<T>, constant: CGFloat)

public func +<T: NSObject>(lhs: LayoutProperty<T>, rhs: CGFloat) -> LayoutPropertyWithOffset<T> {
    return (lhs, rhs)
}

public func -<T: NSObject>(lhs: LayoutProperty<T>, rhs: CGFloat) -> LayoutPropertyWithOffset<T> {
    return (lhs, -rhs)
}

public func == <T>(lhs: LayoutProperty<T>, rhs: LayoutProperty<T>) {
    lhs.anchor.equals(rhs.anchor)
}

public func == <T>(lhs: LayoutProperty<T>, rhs: LayoutPropertyWithOffset<T>) {
    lhs.anchor.equals(rhs.property.anchor, constant: rhs.constant)
}

public func <= <T>(lhs: LayoutProperty<T>, rhs: NSLayoutAnchor<T>) {
    lhs.anchor.lessThanOrEqualTo(rhs)
}

public func <= <T>(lhs: LayoutProperty<T>, rhs: LayoutPropertyWithOffset<T>) {
    lhs.anchor.lessThanOrEqualTo(rhs.property.anchor, constant: rhs.constant)
}

public func >= <T>(lhs: LayoutProperty<T>, rhs: NSLayoutAnchor<T>) {
    lhs.anchor.greaterThanOrEqualTo(rhs)
}

public func >= <T>(lhs: LayoutProperty<T>, rhs: LayoutPropertyWithOffset<T>) {
    lhs.anchor.greaterThanOrEqualTo(rhs.property.anchor, constant: rhs.constant)
}
