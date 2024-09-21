import Turbo
import UIKit

private let rootURL = URL(string: "http://localhost:3000")!
//private let rootURL = URL(string: "https://7026-126-88-239-58.ngrok-free.app")!

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    private lazy var navigator = TurboNavigator()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }

        window!.rootViewController = navigator.rootViewController
        navigator.route(rootURL)
    }
}
