import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)
        if #available(iOS 13.0, *) {
            window?.rootViewController = ViewController.newFromStoryboard(builder: { (coder) -> ViewController in
                return ViewController(coder: coder, someProperty: true)
            })
        } else {
            window?.rootViewController = ViewController.newFromStoryboard()
        }
        window?.makeKeyAndVisible()
        
        return true
    }

}

