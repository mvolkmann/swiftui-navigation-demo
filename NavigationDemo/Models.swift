import Foundation

struct Cat: Hashable, Identifiable {
    var id: String { name }
    let name: String
}

struct Dog: Hashable, Identifiable {
    var id: String { name }
    let name: String
}

struct Person: Hashable, Identifiable {
    var id: String { name }
    let name: String
    var cats: [Cat] = []
    var dogs: [Dog] = []

    mutating func addCat(name: String) {
        cats.append(Cat(name: name))
    }

    mutating func addDog(name: String) {
        dogs.append(Dog(name: name))
    }
}
