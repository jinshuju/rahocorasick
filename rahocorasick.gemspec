# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name = 'rahocorasick'
  s.version = '0.1.0'
  s.platform = Gem::Platform::RUBY
  s.authors = ['IChou']
  s.email = ['zhouyi@jinshuju.net']
  s.homepage = 'https://github.com/jinshuju/rahocorasick'
  s.summary = 'WIP'
  s.description = 'WIP'
  s.files = Dir['lib/**/*.rb', 'ext/**/*.{rs,toml,lock,rb}'] + %w[README.md Rakefile]
  s.require_paths = ['lib']
  s.license = 'MIT'
  s.extensions = ['ext/rahocorasick/extconf.rb']
  s.required_ruby_version = '>= 2.7.0'

  # needed until rubygems supports Rust support is out of beta
  s.add_dependency 'rb_sys', '>= 0.9.54'
end
