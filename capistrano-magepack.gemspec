# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-magepack'
  spec.version       = '0.0.5'
  spec.authors       = ['Nicolas RENAULT']
  spec.email         = ['nrenault@tangkoko.com']
  spec.description   = %q{Magepack tasks for Capistrano 3.x}
  spec.summary       = %q{Bundle js file using Magepack for Capistrano 3.x}
  spec.homepage      = 'https://github.com/nicoren-tangkoko/capistrano-magepack'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
end
