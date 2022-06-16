import SwiftUI

struct DogView: View {
    @EnvironmentObject var viewModel: ViewModel
    var dog: Dog

    var body: some View {
        VStack {
            Text("Dog: \(dog.name)")
                .font(.largeTitle)
            Button("Home") { viewModel.popToRoot() }
        }
    }
}

struct DogView_Previews: PreviewProvider {
    static var previews: some View {
        DogView(dog: Dog(name: "Comet"))
    }
}
