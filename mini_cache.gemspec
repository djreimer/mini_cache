# -*- encoding: utf-8 -*-
# frozen_string_literal: true

require File.expand_path('../lib/mini_cache/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Derrick Reimer']
  gem.email         = ['derrickreimer@gmail.com']
  gem.description   = 'A lightweight, in-memory cache for Ruby objects'
  gem.summary       = 'MiniCache is a lightweight, in-memory key-value store' \
    'for Ruby objects'
  gem.homepage      = 'https://github.com/djreimer/mini_cache'

  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'mini_cache'
  gem.require_paths = ['lib']
  gem.version       = MiniCache::VERSION

  gem.add_development_dependency 'shoulda-context'
  gem.add_development_dependency 'timecop', '~> 0.8'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'rubocop', '~> 0.48'
end
