# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','moss','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'moss'
  s.version = Moss::VERSION
  s.author = 'Dan McClory'
  s.email = 'danmcclory@gmail.com'
  s.homepage = 'http://petespommesfrites.com'
  s.platform = Gem::Platform::RUBY
  s.description = 'Moss remembers and downloads hard-to-recall resources for you'
  s.summary = s.description
  s.files = %w(
bin/moss
lib/moss.rb
README
  )
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'moss'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.6')
  s.add_runtime_dependency('json')
  s.add_runtime_dependency('main')
end
