import UIKit

public protocol NibBacked: class {
    static func newFromNib(withName name:String, bundle:NSBundle, owner: AnyObject?, options: [NSObject : AnyObject]?) -> Self
}

public extension NibBacked {
    static func newFromNib(withName name:String = String(Self.self), bundle:NSBundle = NSBundle(forClass: Self.self), owner: AnyObject? = nil, options: [NSObject : AnyObject]? = nil) -> Self {
        let nib = UINib(nibName: name, bundle: bundle)
        let view = nib.instantiateWithOwner(owner, options: options).first as! Self
        return view
    }
}

public protocol NibBackedCell: class {
    static func cellNib(inBundle bundle: NSBundle) -> UINib
    static func identifier() -> String
}

public extension NibBackedCell {
    static func cellNib(inBundle bundle: NSBundle = NSBundle(forClass: Self.self)) -> UINib {
        let realName = NSStringFromClass(self as AnyClass).componentsSeparatedByString(".").last!
        let nib = UINib(nibName: realName, bundle: bundle)
        return nib
    }
    static func identifier() -> String {
        let realName = NSStringFromClass(self as AnyClass).componentsSeparatedByString(".").last!
        return realName
    }
}
