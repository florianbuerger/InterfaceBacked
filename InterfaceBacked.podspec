Pod::Spec.new do |s|
  s.name = 'InterfaceBacked'
  s.version = '2.3'
  s.summary = 'Simplify using `.storyboards` like `.xib` files'
  s.description = <<-DESC
  Easily create UIViewController from a single storyboard with the same name with handling the error cases, different bundles or optionals.
  DESC
  s.homepage = 'https://github.com/florianbuerger/interfacebacked'
  s.license = { type: 'MIT', file: 'LICENSE' }
  s.author = { 'Florian Bürger' => 'florian@florianbuerger.com' }
  s.social_media_url = 'https://twitter.com/florianbuerger'
  s.ios.deployment_target = '12.0'
  s.swift_version = '5'
  s.source = {
    git: 'https://github.com/florianbuerger/interfacebacked.git',
    tag: s.version.to_s
  }
  s.source_files = 'InterfaceBacked/**/*.swift'
  s.framework = 'UIKit'
end
