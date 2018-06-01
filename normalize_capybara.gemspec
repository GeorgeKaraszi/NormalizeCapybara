
# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "normalize_capybara/version"

Gem::Specification.new do |spec|
  spec.name          = "NormalizeCapybara"
  spec.version       = NormalizeCapybara::VERSION
  spec.authors       = ["George Protacio-Karaszi"]
  spec.email         = ["georgekaraszi@gmail.com"]

  spec.summary       = "Reintroduces Normalizing output text from capybara"
  spec.description   = "Reintroduces Normalizing output text from capybara"
  spec.homepage      = "https://github.com/GeorgeKaraszi/NormalizeCapybara"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- spec/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capybara", ">= 3.0", "< 4"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
