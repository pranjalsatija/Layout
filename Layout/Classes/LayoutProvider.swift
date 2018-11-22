//
//  LayoutProvider.swift
//  Island
//
//  Created by Pranjal Satija on 11/21/18.
//  Copyright © 2018 Pranjal Satija. All rights reserved.
//

import UIKit

public protocol LayoutProvider {
    typealias XAnchor = NSLayoutXAxisAnchor
    typealias YAnchor = NSLayoutYAxisAnchor
    typealias DimensionAnchor = NSLayoutDimension

    var leading: LayoutProperty<XAnchor> { get }
    var trailing: LayoutProperty<XAnchor> { get }
    var top: LayoutProperty<YAnchor> { get }
    var bottom: LayoutProperty<YAnchor> { get }

    var centerX: LayoutProperty<XAnchor> { get }
    var centerY: LayoutProperty<YAnchor> { get }

    var width: LayoutProperty<DimensionAnchor> { get }
    var height: LayoutProperty<DimensionAnchor> { get }
}

extension UIView: LayoutProvider { }
public extension UIView {
    var leading: LayoutProperty<XAnchor> { return LayoutProperty(leadingAnchor) }
    var trailing: LayoutProperty<XAnchor> { return LayoutProperty(trailingAnchor) }
    var top: LayoutProperty<YAnchor> { return LayoutProperty(topAnchor) }
    var bottom: LayoutProperty<YAnchor> { return LayoutProperty(bottomAnchor) }

    var centerX: LayoutProperty<XAnchor> { return LayoutProperty(centerXAnchor) }
    var centerY: LayoutProperty<YAnchor> { return LayoutProperty(centerYAnchor) }

    var width: LayoutProperty<DimensionAnchor> { return LayoutProperty(widthAnchor) }
    var height: LayoutProperty<DimensionAnchor> { return LayoutProperty(heightAnchor) }

    func pinEdges(to view: UIView, edgeInsets: UIEdgeInsets = .zero) {
        leading == view.leading + edgeInsets.left
        trailing == view.trailing - edgeInsets.right
        top == view.top + edgeInsets.top
        bottom == view.bottom - edgeInsets.bottom
    }
}
