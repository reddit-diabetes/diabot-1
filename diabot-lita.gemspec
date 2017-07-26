Gem::Specification.new do |spec|
  spec.name          = 'diabot-lita'
  spec.version       = '1.1.0'
  spec.version       = "#{spec.version}.alpha#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  spec.authors       = ['Cas Eliëns']
  spec.email         = ['cas.eliens@gmail.com']
  spec.description   = 'Diabetes Discord Bot'
  spec.summary       = 'A Diabetes-themed Discord bot using Lita'
  spec.homepage      = 'https://github.com/cascer1/diabot'
  spec.license       = 'GPL-3.0+'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita-discord_oauth'
  spec.add_runtime_dependency 'lita-diabetter'
  # spec.add_runtime_dependency 'lita-diabetes'
  spec.add_runtime_dependency 'lita-awyiss'
  spec.add_runtime_dependency 'lita-excuses'
  spec.add_runtime_dependency 'lita-dig'
end
