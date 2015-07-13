lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'capistrano-figaro'
  s.version       = File.read('VERSION').strip
  s.summary       = 'Capistrano integration with Figaro'
  s.description   = 'This gem allows the usage of ENV variables from Figaro in Capistrano settings.'

  s.authors       = ['Runar Skaare Tveiten']
  s.email         = ['runar@tveiten.io']
  s.homepage      = 'https://github.com/runar/capistrano-figaro'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(/^test/)
  s.require_paths = ['lib']

  s.add_dependency 'capistrano', '~> 3.1'
  s.add_dependency 'figaro', '~> 1.1'

  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'minitest', '~> 5.7'
  s.add_development_dependency 'rake', '~> 10.4'
  s.add_development_dependency 'codeclimate-test-reporter', '~> 0.4'
end
