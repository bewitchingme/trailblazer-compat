lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trailblazer/compat/version'

Gem::Specification.new do |spec|
  spec.name          = "trailblazer-compat"
  spec.version       = Trailblazer::Compat::VERSION
  spec.authors       = ["Nick Sutterer"]
  spec.email         = ["apotonick@gmail.com"]

  spec.summary       = %q{Use Trailblazer 1.1 and 2.x.}
  spec.description   = %q{Use Trailblazer 1.1 and 2.x in one application.}
  spec.homepage      = "http://trailblazer.to"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_dependency "trailblazer", ">= 1.2.0", "< 1.3.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
