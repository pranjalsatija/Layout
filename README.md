# Layout
[![License](https://img.shields.io/cocoapods/l/Layout.svg?style=flat)](https://cocoapods.org/pods/Layout)
[![Platform](https://img.shields.io/cocoapods/p/Layout.svg?style=flat)](https://cocoapods.org/pods/Layout)

Layout is a *really* small library to make it easy for you to create Auto Layout constraints in your apps. It's built on top of `NSLayoutAnchor`, and it includes all the type safety that comes with it. It also uses custom operators and Swift closures to make creating constraints as easy as possible:
```swift
let superview = UIView()
let subview = UIView()
superview.addSubview(subview)

// Method 1: Custom Operators
subview.layout {
  $0.top == superview.top + 16
  $0.centerX >= superview.centerX
  $0.width <= 50
  // and so on
}

// Method 2: Functions
subview.layout {
  $0.top.equals(superview.top, constant: 16)
  $0.centerX.greaterThanOrEqualTo(superView.centerX)
  $0.width.lessThanOrEqualTo(50)
  $0.height.equals(superview.height, priority: .defaultLow) // the functions let you express priority
  // and so on
}

// Helper Functions
subview.layout {
  // this will automatically negate the values for bottom and trailing
  $0.pinToEdges(superview, edgeInsets: .all(8))
}
```

## Inspiration
This library draws a lot from SnapKit in terms of what the finished API should look like, but it's much simpler under the hood: it's under 200 LOC. In addition, my goal is to add more convenience functions to make common groups of constraints easier to build.

## Pending Features
- [ ] Multipliers
- [ ] Aspect Ratio Constraints
- [ ] More Convenience Functions?
- [ ] Tests

## Author
pranjalsatija, me@pranj.co

## License
Layout is available under the MIT license. See the LICENSE file for more info.
