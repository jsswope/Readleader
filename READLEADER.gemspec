# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "READLEADER"
  spec.version       = '1.0'
  spec.authors       = ["Jeff Swope"]
  spec.email         = ["jeff.swope@gmail.com"]
  spec.summary       = %q{Read github activiy}
  spec.description   = %q{Read githib leader avtivity.}
  spec.homepage      = "nil"
  spec.license       = ""

  spec.files         = ['lib/READLEADER.rb']
  spec.executables   = ['bin/READLEADER']
  spec.test_files    = ['tests/test_READLEADER.rb']
  spec.require_paths = ["lib"]
end