import SwiftUI

/**
 # Setup
 - Basic tabs, no `TabSection`, nothing fancy.
 - BUT there are more tabs than space on narrow widths (more than 5 tabs so requires "More" tab be created to contain Tab 5 and 6.
 
 ## Issue 1: "More" tabs that need navigation.
 When tabs are collapsed into a "More" tab - we have a double navigation bar.
 Is there a way to prevent this? What is the recommended approach here?
 We want to drive navigation pushes through SwiftUI but don't want a double nav bar.
 
 ## Issue 2: Selection not kept in sync when navigating through More tab.
 When in narrow and selecting tabs that are inside the "More" tab - the selection binding on the TabView is not updated.
 This means when you switch from narrow/wide and back your tab selection gets out of sync.
 */
struct TabViewBasic: View {
    @State var selectedTab: String = "simpsons"
    
    var body: some View {
        TabView(
            selection: Binding(
                get: {
                    print("Getting", selectedTab)
                    return selectedTab
                },
                set: { newValue in
                    print("Setting", newValue)
                    selectedTab = newValue
                }
            )
        ) {
            Tab("Simpsons", systemImage: "square.grid.2x2", value: "simpsons") {
                SimpsonsView()
            }
            Tab("Tab 2", systemImage: "tag.fill", value: "tab2") {
                GenericTab(title: "Tab 2")
            }
            Tab("Tab 3", systemImage: "tag.fill", value: "tab3") {
                GenericTab(title: "Tab 3")
            }
            Tab("Tab 4", systemImage: "tag.fill", value: "tab4") {
                GenericTab(title: "Tab 4")
            }
            Tab("Tab 5", systemImage: "tag.fill", value: "tab5") {
                GenericTab(title: "Tab 5")
            }
            Tab("Tab 6", systemImage: "tag.fill", value: "tab6") {
                GenericTab(title: "Tab 6")
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}
