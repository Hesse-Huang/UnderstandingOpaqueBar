# UnderstandingOpaqueBar

By default, the navigation bar is translucent. The topmost view controller (vc1) layouts its view (v1) on top-left of the screen.

Changing navigation bar's translucent property makes v1's origin relocate at bottom-left of the navigation bar.

To restore v1's origin back to top-left of the screen, just set vc1`extendedLayoutIncludesOpaqueBars` to true. But if vc1 is kind of `UITableViewController`, we still need to set `tableView.contentInsetAdjustmentBehavior = .never` in iOS 11, or `automaticallyAdjustsScrollViewInsets = false` for earlier iOS versions.