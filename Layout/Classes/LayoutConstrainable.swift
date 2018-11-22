//
//  LayoutConstrainable.swift
//  Island
//
//  Created by Pranjal Satija on 11/21/18.
//  Copyright © 2018 Pranjal Satija. All rights reserved.
//

import UIKit

public protocol LayoutConstrainable {
    func lessThanOrEqualTo(_ other: Self, priority: UILayoutPriority, constant: CGFloat)
    func equals(_ other: Self, priority: UILayoutPriority, constant: CGFloat)
    func greaterThanOrEqualTo(_ other: Self, priority: UILayoutPriority, constant: CGFloat)
}
