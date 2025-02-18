import SwiftUI

/**
# Repro Steps
 1. Run on iPad in stage manager mode with a narrow width (bottom tabs)
 2. Select "More" Tab
 3. Notice there is no edit button.
 4. Resize the app to be really wide (top tab bar), then narrow again (bottom tab bar)
 5. Select "More" tab again. Notice the "Edit" button appears.
 6. Try uncommenting all the customization code below. Nothing helps.
 */
struct TabViewDisableCustomization: View {
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
//            .customizationBehavior(.disabled, for: .sidebar)
//            .customizationBehavior(.disabled, for: .tabBar)
            
            Tab("Tab 2", systemImage: "tag.fill", value: "tab2") {
                GenericTab(title: "Tab 2")
            }
//            .customizationBehavior(.disabled, for: .sidebar)
//            .customizationBehavior(.disabled, for: .tabBar)
            
            Tab("Tab 3", systemImage: "tag.fill", value: "tab3") {
                GenericTab(title: "Tab 3")
            }
//            .customizationBehavior(.disabled, for: .sidebar)
//            .customizationBehavior(.disabled, for: .tabBar)
            
            Tab("Tab 4", systemImage: "tag.fill", value: "tab4") {
                GenericTab(title: "Tab 4")
            }
//            .customizationBehavior(.disabled, for: .sidebar)
//            .customizationBehavior(.disabled, for: .tabBar)
            
            Tab("Tab 5", systemImage: "tag.fill", value: "tab5") {
                GenericTab(title: "Tab 5")
            }
//            .customizationBehavior(.disabled, for: .sidebar)
//            .customizationBehavior(.disabled, for: .tabBar)
            
            Tab("Tab 6", systemImage: "tag.fill", value: "tab6") {
                GenericTab(title: "Tab 6")
            }
//            .customizationBehavior(.disabled, for: .sidebar)
//            .customizationBehavior(.disabled, for: .tabBar)
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}
