$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'slugifa/version'

Gem::Specification.new do |s|
  s.name        = 'slugifa'
  s.version     = Slugifa::VERSION
  s.authors     = ['Mohsen Alizadeh']
  s.email       = ['mohsen@alizadeh.us']
  s.homepage    = 'https://github.com/mohsen-alizadeh/slugify'
  s.summary     = 'slug with Persian character set support.'
  s.description = 'slug with Persian character set support.'

  s.files = Dir['lib/**/*', 'README.rdoc']
  s.test_files = Dir['rspec/**/*']
end
