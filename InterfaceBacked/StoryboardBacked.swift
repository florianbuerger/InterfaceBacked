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

@available(iOS 13.0, *)
public extension StoryboardBacked where Self: UIViewController {
    
    static func newFromStoryboard(builder: @escaping (NSCoder) -> Self) -> Self {
        let storyboard = UIStoryboard(name: String(describing: Self.self), bundle: Bundle(for: Self.self))
        guard let viewController = storyboard.instantiateInitialViewController(creator: builder) else {
            preconditionFailure("Unable to create view controller from storyboard \(storyboard)")
        }
        
        return viewController
    }
}
