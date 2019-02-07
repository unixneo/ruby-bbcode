$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ruby-bbcode/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ruby-bbcode"
  s.version     = RubyBBCode::VERSION
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.3.0'
  s.author      = "Maarten Bezemer"
  s.email       = "maarten.bezemer@gmail.com"
  s.homepage    = "http://github.com/veger/ruby-bbcode"
  s.summary     = "ruby-bbcode-#{s.version}"
  s.description = "Convert BBCode to HTML and check whether the BBCode is valid."
  s.license     = "MIT"

  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md", "CHANGELOG.md"]
  s.test_files = Dir["test/**/*"]

  s.rdoc_options << '--title' << 'Ruby BBCode' << '--main' << 'README.md'
  s.extra_rdoc_files = ['README.md', 'CHANGELOG.md', 'MIT-LICENSE']

  s.add_dependency 'activesupport', '>= 4.2.2'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'coveralls', '>= 0.8.0'

  s.add_development_dependency 'term-ansicolor'
end
