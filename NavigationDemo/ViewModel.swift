import SwiftUI

class ViewModel: ObservableObject {
    @Published var path = NavigationPath()

    func popToRoot() {
        path.removeLast(path.count)
    }
}
