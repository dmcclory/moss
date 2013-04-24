require File.join([File.dirname(__FILE__),'lib','moss','version.rb'])

spec = Gem::Specification.new do |s| 
  s.name = 'moss'
  s.version = Moss::VERSION
  s.author = 'Dan McClory'
  s.email = 'danmcclory@gmail.com'
  s.homepage = 'http://petespommesfrites.com'
  s.platform = Gem::Platform::RUBY
  s.description = 'Like bookmarks for your shell'
  s.summary = s.description
  s.files = %w(
bin/moss
lib/moss.rb
lib/moss/version.rb
README
  )
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'moss'
  s.add_runtime_dependency('json')
  s.add_runtime_dependency('main')
end
