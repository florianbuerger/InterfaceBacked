import UIKit

public protocol NibBacked: class {
    static func newFromNib(withName name:String, bundle:Bundle, owner: AnyObject?, options: [NSObject : AnyObject]?) -> Self
}

public extension NibBacked {
    static func newFromNib(withName name:String = String(describing: Self.self), bundle:Bundle = Bundle(for: Self.self), owner: AnyObject? = nil, options: [NSObject : AnyObject]? = nil) -> Self {
        let nib = UINib(nibName: name, bundle: bundle)
        let view = nib.instantiate(withOwner: owner, options: options).first as! Self
        return view
    }
}

public protocol NibBackedCell: class {
    static func cellNib(inBundle bundle: Bundle) -> UINib
    static func identifier() -> String
}

public extension NibBackedCell {
    static func cellNib(inBundle bundle: Bundle = Bundle(for: Self.self)) -> UINib {
        let nib = UINib(nibName: String(describing: self), bundle: bundle)
        return nib
    }
    static func identifier() -> String {
        return String(describing: self)
    }
}
