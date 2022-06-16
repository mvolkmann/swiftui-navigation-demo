import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel

    var people: [Person] = []

    init() {
        var p = Person(name: "Tami")
        p.addDog(name: "Comet")
        p.addCat(name: "Whiskers")
        people.append(p)

        p = Person(name: "Amanda")
        p.addDog(name: "Maisey")
        p.addDog(name: "Oscar")
        people.append(p)

        p = Person(name: "Karen")
        p.addCat(name: "Bob")
        p.addCat(name: "Mary")
        people.append(p)
    }

    var body: some View {
        NavigationStack(path: $viewModel.path) {
            VStack {
                Text("People").font(.largeTitle)
                ForEach(people) { person in
                    NavigationLink(person.name, value: person)
                }
            }
            // This describes the view to be used for Person objects.
            .navigationDestination(
                for: Person.self,
                destination: { person in
                    PersonView(person: person)
                }
            )
            // This describes the view to be used for Dog objects.
            .navigationDestination(
                for: Dog.self,
                destination: { dog in
                    DogView(dog : dog)
                }
            )
            // This describes the view to be used for Cat objects.
            .navigationDestination(
                for: Cat.self,
                destination: { cat in
                    CatView(cat: cat)
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
