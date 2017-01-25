# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'lib', 'fakes3', 'version')

Gem::Specification.new do |s|
  s.name        = "fakes3"
  s.version     = FakeS3::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Curtis Spencer"]
  s.email       = ["fakes3@supportedsource.org"]
  s.homepage    = "https://github.com/jubos/fake-s3"
  s.summary     = %q{Fake S3 is a server that simulates Amazon S3 commands so you can test your S3 functionality in your projects}
  s.description = %q{Use Fake S3 to test basic Amazon S3 functionality without actually connecting to AWS}
  s.license     = "Supported Source"

  s.rubyforge_project = "fakes3"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "aws-s3", "~> 0.6.3"
  s.add_development_dependency "right_aws", "~> 3.1.0"
  s.add_development_dependency "rest-client", "~> 2.0.0"
  s.add_development_dependency "rake", "~> 11.2"
  s.add_development_dependency "aws-sdk", "~> 2"
  s.add_development_dependency "aws-sdk-v1", "~> 1.66.0"
  s.add_development_dependency "test-unit"
  s.add_development_dependency "mocha"
  #s.add_development_dependency "ruby-debug"
  #s.add_development_dependency "debugger"
  s.add_dependency "thor"
  s.add_dependency "builder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
