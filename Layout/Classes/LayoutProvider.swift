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

extension LayoutProvider {
    func pinEdges(to provider: LayoutProvider, edgeInsets: UIEdgeInsets = .zero) {
        leading == provider.leading + edgeInsets.left
        trailing == provider.trailing - edgeInsets.right
        top == provider.top + edgeInsets.top
        bottom == provider.bottom - edgeInsets.bottom
    }
}

extension UIView: LayoutProvider {
    public var leading: LayoutProperty<XAnchor> { return LayoutProperty(leadingAnchor) }
    public var trailing: LayoutProperty<XAnchor> { return LayoutProperty(trailingAnchor) }
    public var top: LayoutProperty<YAnchor> { return LayoutProperty(topAnchor) }
    public var bottom: LayoutProperty<YAnchor> { return LayoutProperty(bottomAnchor) }

    public var centerX: LayoutProperty<XAnchor> { return LayoutProperty(centerXAnchor) }
    public var centerY: LayoutProperty<YAnchor> { return LayoutProperty(centerYAnchor) }

    public var width: LayoutProperty<DimensionAnchor> { return LayoutProperty(widthAnchor) }
    public var height: LayoutProperty<DimensionAnchor> { return LayoutProperty(heightAnchor) }
}
