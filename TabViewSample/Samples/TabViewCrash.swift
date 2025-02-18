import SwiftUI

/**
 # Crash Steps
 1. Run on iPad in stage manager mode with a nice wide width.
 2. Select Tab 5
 3. Resize the app window to a narrow width
 4. Crash: SwiftUI/SidebarAdaptableTabViewStyle_iOS.swift:482: Fatal error: Tried to update with invalid selection value
 */
struct TabViewCrash: View {
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
            TabSection("My Section") {
                Tab("Tab 2", systemImage: "tag.fill", value: "tab2") {
                    GenericTab(title: "Tab 2")
                }
                Tab("Tab 3", systemImage: "tag.fill", value: "tab3") {
                    GenericTab(title: "Tab 3")
                }
                Tab("Tab 4", systemImage: "tag.fill", value: "tab4") {
                    GenericTab(title: "Tab 4")
                }
            }
            
            TabSection("Another Section") {
                Tab("Tab 5", systemImage: "tag.fill", value: "tab5") {
                    GenericTab(title: "Tab 5")
                }
                Tab("Tab 6", systemImage: "tag.fill", value: "tab6") {
                    GenericTab(title: "Tab 6")
                }
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}
