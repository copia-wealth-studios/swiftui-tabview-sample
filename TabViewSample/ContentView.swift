import SwiftUI

/**
 Uncomment the different TabView examples to test the different bugs.'
 Repro steps documented in the individual views.
 */
struct ContentView: View {
    var body: some View {
        TabViewBasic()
//        TabViewCrash()
//        TabViewSectionsMishandled()
//        TabViewDisableCustomization()
    }
}

#Preview {
    ContentView()
}
