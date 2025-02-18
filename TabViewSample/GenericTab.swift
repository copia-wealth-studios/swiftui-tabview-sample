import SwiftUI

/**
 
 */
struct GenericTab: View {
    let title: String

    var body: some View {
        NavigationStack {
            GenericTabContent(title: title)
        }
    }
}

private struct GenericTabContent: View {
    let title: String
    @State private var showNextTab = false
    
    var body: some View {
        VStack {
            Text(title)
            
            Button("Push") {
                showNextTab = true
            }
            .navigationDestination(isPresented: $showNextTab) {
                GenericTabContent(title: "\(title)+").id("\(title)+")
            }
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
