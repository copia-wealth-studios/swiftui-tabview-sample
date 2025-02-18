import SwiftUI

struct Character: Identifiable {
    let name: String
    let catchphrase: String
    let occupation: String
    
    var id: String { name }
}

struct SimpsonsView: View {
    let characters = [
        Character(
            name: "Homer Simpson", catchphrase: "D'oh!", occupation: "Nuclear Safety Inspector"
        ),
        Character(name: "Bart Simpson", catchphrase: "Eat my shorts!", occupation: "Student"),
        Character(name: "Mr. Burns", catchphrase: "Excellent", occupation: "Nuclear Plant Owner"),
        Character(
            name: "Comic Book Guy", catchphrase: "Worst. Episode. Ever.", occupation: "Store Owner"
        ),
        Character(
            name: "Chief Wiggum", catchphrase: "Bake him away, toys", occupation: "Police Chief"
        ),
        Character(name: "Nelson", catchphrase: "Ha ha!", occupation: "School Bully"),
        Character(
            name: "Apu", catchphrase: "Thank you, come again!", occupation: "Kwik-E-Mart Owner"
        ),
    ]

    var body: some View {
        NavigationStack {
            Table(characters) {
                TableColumn("Character") { character in
                    Text(character.name)
                }
                TableColumn("Catchphrase") { character in
                    Text(character.catchphrase)
                        .italic()
                }
                TableColumn("Job") { character in
                    Text(character.occupation)
                }
            }
            .navigationTitle("Springfield Residents")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
