# frozen_string_literal: true

require_relative 'lib/rainbow_liquid/version'

Gem::Specification.new do |spec|
  spec.name          = 'rainbow_liquid'
  spec.version       = RainbowLiquid::VERSION
  spec.authors       = ['Guilherme Carreiro']
  spec.email         = ['karreiro@gmail.com']

  spec.homepage      = 'https://github.com/karreiro/rainbow_liquid'
  spec.license       = 'MIT'
  spec.summary       = 'A Liquid-based colorization tool for templates.'
  spec.description   = 'Rainbow and Liquid: style your command line tools with liquid templates.'

  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['allowed_push_host']  = 'https://rubygems.org'
  spec.metadata['homepage_uri']       = spec.homepage
  spec.metadata['source_code_uri']    = 'https://github.com/karreiro/rainbow_liquid'
  spec.metadata['changelog_uri']      = 'https://github.com/karreiro/rainbow_liquid/blob/main/CHANGELOG.md'

  gemspec = File.basename(__FILE__)

  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end

  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'liquid', '5.8.1'
  spec.add_dependency 'rainbow', '3.1.1'

  spec.metadata['rubygems_mfa_required'] = 'true'
end
