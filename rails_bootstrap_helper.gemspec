# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_bootstrap_helper/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Hoang Nghiem"]
  gem.email         = ["hoangnghiem1711@gmail.com"]
  gem.description   = %q{Bootstrap Helpers for Ruby on Rails}
  gem.summary       = %q{Bootstrap Helpers for Ruby on Rails}
  gem.homepage      = "https://github.com/olimart/rails_bootstrap_helper"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "rails_bootstrap_helper"
  gem.require_paths = ["lib"]
  gem.version       = RailsBootstrapHelper::VERSION

  gem.add_dependency "railties",    ">= 4.0"
  gem.add_dependency "simple_form", ">= 3.0"
  gem.add_development_dependency "thor",    "~> 0.14"
  gem.add_development_dependency "bundler", ">= 1.0.0"
  gem.add_development_dependency "rails",   ">= 4.0.0"
  gem.add_development_dependency "sqlite3"
end
