import SwiftUI

struct PersonView: View {
    @EnvironmentObject var viewModel: ViewModel
    var person: Person

    var body: some View {
        VStack {
            Text("Person: \(person.name)")
                .font(.largeTitle)
            Button("Home") { viewModel.popToRoot() }

            if !person.cats.isEmpty {
                Divider()
                Text("Cats").font(.title)
                ForEach(person.cats) { cat in
                    NavigationLink(cat.name, value: cat)
                }
            }

            if !person.dogs.isEmpty {
                Divider()
                Text("Dogs").font(.title)
                ForEach(person.dogs) { dog in
                    NavigationLink(dog.name, value: dog)
                }
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person(name: "Tami"))
    }
}
