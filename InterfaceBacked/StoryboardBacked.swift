import UIKit

public protocol StoryboardBacked:class {
    static func newFromStoryboard(withName name:String, bundle:NSBundle) -> Self
}

public extension StoryboardBacked {
    static func newFromStoryboard(withName name: String = String(Self.self), bundle: NSBundle = NSBundle(forClass: Self.self)) -> Self {
        let storyboard = UIStoryboard(name: name, bundle: bundle)
        let controller = storyboard.instantiateInitialViewController()! as! Self
        return controller
    }
}
