# -*- encoding: utf-8 -*-
require './lib/thor/levenshtein/version'

Gem::Specification.new do |gem|

  # NAME
  gem.name          = "thor-levenshtein"
  gem.version       = Thor::Levenshtein::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.required_ruby_version = '>= 1.9.2'

  # LICENSES
  gem.license       = 'MIT'
  gem.authors       = ["Jiunn Haur Lim"]
  gem.email         = ["codex.is.poetry@gmail.com"]
  gem.summary       = %q{Thor with auto-suggest}
  gem.description   = %q{Thor that suggest possible commands when you make a typo.}
  gem.homepage      = "https://github.com/jimjh/thor-levenshtein"

  # PATHS
  gem.require_paths = %w[lib]
  gem.files         = %w[LICENSE README.md] + Dir.glob('lib/**/*')
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }

  gem.add_dependency 'thor', '~> 0.16.0'
  gem.add_dependency 'levenshtein', '~> 0.2.2'
  gem.add_development_dependency 'rake',  '~> 10.0.3'
  gem.add_development_dependency 'rspec', '~> 2.12.0'

end
