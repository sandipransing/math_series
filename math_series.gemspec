# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'math_series/version'

Gem::Specification.new do |spec|
  spec.name          = "math_series"
  spec.version       = MathSeries::VERSION
  spec.authors       = ["Sandip Ransing"]
  spec.email         = ["sandip.ransing@synerzip.com"]

  spec.summary       = %q{A simple ruby gem to generate different types of math series.}
  spec.description   = %q{A simple ruby gem to generate different types of math series like Odd, Even, Fibonacci series}
  spec.homepage      = "https://github.com/sandipransing/math_series"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "http://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
