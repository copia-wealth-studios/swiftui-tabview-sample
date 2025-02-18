# Sample app to demonstrate issues with `SwfitUI.TabView` in `sidebarAdaptable` mode

The app is setup to be able to run different `TabView` implementations that each demonstrate unique challenges
we are facing when trying to use `SwiftUI`'s `TabView` while supporting both regular and constrained widths.

These use cases do not seem extraordinary. Especially since stage manager launched on iPad it seems more crucial than
ever for your app to be able to adapt between these two different size classes, and therefore two different
modes the `TabView` can be in.

## Demo Video
[Watch me run through the issues](Demo.mov)

## Documented Issues

### [Basic TabView Issues](TabViewSample/Samples/TabViewBasic.swift)
1. Double Navigation Bar: When tabs are collapsed into a "More" tab, there's an unwanted double navigation bar
2. Selection Sync: Tab selection gets out of sync when switching between narrow/wide layouts through the "More" tab

### [TabView Crash](TabViewSample/Samples/TabViewCrash.swift)
- Fatal crash occurs when resizing window to narrow width while Tab 5 is selected
- Error: `SwiftUI/SidebarAdaptableTabViewStyle_iOS.swift:482: Fatal error: Tried to update with invalid selection value`

### [Section Handling Issues](TabViewSample/Samples/TabViewSectionsMishandled.swift)
1. Section Display Bug: Bottom tabs incorrectly show section names instead of tab names in narrow width
2. Tab Selection Mismatch: Tab identifiers don't match selected tabs in narrow width mode

### [Customization Issues](TabViewSample/Samples/TabViewDisableCustomization.swift)
- Inconsistent "Edit" button behavior in More tab
- Unable to properly disable tab customization
        
## Reproducing issues

- Run the app on the `iPad Pro 13-inch (M4)` simulator using `Xcode 16.2`
- Enable Stage Manager under Settings -> Multitasking & Gestures
- Navigate to `ContentView.swift` as a starting point
- Uncomment one example at a time. Jump to the specific implementation for documented reproduction steps.
