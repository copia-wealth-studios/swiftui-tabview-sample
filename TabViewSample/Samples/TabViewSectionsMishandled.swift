import SwiftUI

/**
 # Two bugs on this one
 
 ## Repro one
 1. Run on iPad in stage manager mode with a nice wide width.
 2. Select Tab 6
 3. Resize the app window to a narrow width
 4. Notice that the bottom tabs become the sections ("Main", "My Section", "Another Section") and not the expected "Simpsons", "Tab 2", "Tab 3", "Tab 4", "More"
 5. Notice tapping either section immediately causes this bug to fix itself.
 5. Go wide again, select tab 6, go narrow again. This time the tabs are re-organized appropriately.
 
 ## Repro two
 1. Run on iPad in stage manager mode with a narrow width (bottom tabs)
 2. Tap "Tab 2". Notice it prints "tab3"
 3. Tap "Tab 3". Notice it prints "tab4"
 4. Switch to a wide width (top tab bar)
 5. Notice switching tabs now prints correct tab identifier.
 */
struct TabViewSectionsMishandled: View {
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
            TabSection("Main") {
                Tab("Simpsons", systemImage: "square.grid.2x2", value: "simpsons") {
                    SimpsonsView()
                }
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
