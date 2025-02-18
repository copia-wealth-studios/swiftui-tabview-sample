# Sample app to demonstrate issues with `SwfitUI.TabView` in `sidebarAdaptable` mode

The app is setup to be able to run different `TabView` implementations that each demonstrate unique challenges
we are facing when trying to use `SwiftUI`'s `TabView` while supporting both regular and constrained widths.

These use cases do not seem extraordinary. Especially since stage manager launched on iPad it seems more crucial than
ever for your app to be able to adapt between these two different size classes, and therefore two different
modes the `TabView` can be in.
        
## Reproducing issues

- Run the app on the `iPad Pro 13-inch (M4)` simulator using `Xcode 16.2`
- Enable Stage Manager under Settings -> Multitasking & Gestures
- Navigate to `ContentView.swift` as a starting point
- Uncomment one example at a time. Jump to the specific implementation for documented reproduction steps.
