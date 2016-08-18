import UIKit

public protocol StoryboardBacked:class {
    static func newFromStoryboard(withName name:String, bundle:Bundle) -> Self
}

public extension StoryboardBacked {
    static func newFromStoryboard(withName name: String = String(Self.self), bundle: Bundle = Bundle(for: Self.self)) -> Self {
        let storyboard = UIStoryboard(name: name, bundle: bundle)
        let controller = storyboard.instantiateInitialViewController()! as! Self
        return controller
    }
}
