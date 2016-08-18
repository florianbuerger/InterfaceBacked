import UIKit

protocol NibBacked: class {
    static func fromNib(withName name:String?, bundle:NSBundle?, owner: AnyObject?, options: [NSObject : AnyObject]?) -> Self
}

extension NibBacked {
    static func fromNib(withName name:String? = nil, bundle:NSBundle? = nil, owner: AnyObject? = nil, options: [NSObject : AnyObject]? = nil) -> Self {
        let realName = name ?? NSStringFromClass(self as AnyClass).componentsSeparatedByString(".").last!
        let nib = UINib(nibName: realName, bundle: bundle)
        let view = nib.instantiateWithOwner(owner, options: options).first as! Self
        return view
    }
}

protocol NibBackedCell: class {
    static func cellNib(inBundle bundle: NSBundle?) -> UINib
    static func identifier() -> String
}

extension NibBackedCell {
    static func cellNib(inBundle bundle: NSBundle? = nil) -> UINib {
        let realName = NSStringFromClass(self as AnyClass).componentsSeparatedByString(".").last!
        let nib = UINib(nibName: realName, bundle: bundle)
        return nib
    }
    static func identifier() -> String {
        let realName = NSStringFromClass(self as AnyClass).componentsSeparatedByString(".").last!
        return realName
    }
}