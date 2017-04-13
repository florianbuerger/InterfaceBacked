Pod::Spec.new do |s|
  s.name          = "InterfaceBacked"
  s.version       = "1.1.0"
  s.summary       = "Simplify using `.storyboards` like `.xib` files"
  s.description   = <<-DESC
  Easily create UIViewController from a single storyboard with the same name with handling the error cases, different bundles or optionals.
  DESC
  s.homepage      = "https://github.com/florianbuerger/interfacebacked"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Florian Bürger" => "florian@florianbuerger.com"}
  s.social_media_url  = "https://twitter.com/florianbuerger"
  s.ios.deployment_target = "9.0"
  s.source        = { :git => "https://github.com/florianbuerger/interfacebacked.git", :tag => s.version.to_s }
  s.source_files  = "InterfaceBacked/**/*"
  s.framework     = "UIKit"
end
