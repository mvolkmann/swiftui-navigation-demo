import SwiftUI

struct CatView: View {
    @EnvironmentObject var viewModel: ViewModel
    var cat: Cat

    var body: some View {
        VStack {
            Text("Cat: \(cat.name)")
                .font(.largeTitle)
            Button("Home") { viewModel.popToRoot() }
        }
    }
}

struct CatView_Previews: PreviewProvider {
    static var previews: some View {
        CatView(cat: Cat(name: "Whiskers"))
    }
}
