import UIKit

protocol StoryboardBacked:class {
    static func newFromStoryboardWithName(name:String?, bundle:NSBundle?) -> Self
}

extension StoryboardBacked {
    static func newFromStoryboardWithName(name:String?, bundle:NSBundle?) -> Self {
        let realName = name ?? NSStringFromClass(self as AnyClass).componentsSeparatedByString(".").last!
        let storyboard = UIStoryboard(name: realName, bundle: bundle)
        let controller = storyboard.instantiateInitialViewController()! as! Self
        return controller
    }
}
