import UIKit

public protocol StoryboardBacked:class {}

public extension StoryboardBacked {
    
    static func newFromStoryboard() -> Self {
        return newFromStoryboard(withName: String(describing: Self.self))
    }

    static func newFromStoryboard(withName name: String) -> Self {
        return newFromStoryboard(withName: name, bundle: Bundle(for: Self.self))
    }

    static func newFromStoryboard(withName name: String, bundle: Bundle) -> Self {
        let storyboard = UIStoryboard(name: name, bundle: bundle)
        let controller = storyboard.instantiateInitialViewController()! as! Self
        return controller
    }
}
