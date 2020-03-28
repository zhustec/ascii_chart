# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ascii_chart/version'

Gem::Specification.new do |spec|
  spec.name          = 'ascii_chart'
  spec.version       = AsciiChart::VERSION
  spec.authors       = ['zhustec']
  spec.email         = ['zhustec@foxmail.com']

  spec.summary       = 'Nice-looking lightweight console ASCII line charts ┈╯'
  spec.description   = 'Nice-looking lightweight console ASCII line charts ┈╯'
  spec.homepage      = 'https://github.com/zhustec/ascii_chart'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3'

  spec.add_development_dependency 'bundler', '>= 1.15.0', '< 3.0'
  spec.add_development_dependency 'coveralls', '>= 0.8', '< 1.0'
  spec.add_development_dependency 'minitest', '>= 5.10', '< 6.0'
  spec.add_development_dependency 'pry', '>= 0.10', '< 1.0'
  spec.add_development_dependency 'rake', '>= 12.0', '< 14.0'
end
