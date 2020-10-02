require_relative 'lib/sith_jedi_ewok/version'

Gem::Specification.new do |spec|
  spec.name          = "Sith-Lord_Jedi_Ewok"
  spec.version       = SithJediEwok::VERSION
  spec.authors       = ["Daniel Waldow"]

  spec.summary       = %q{Sith-Lord, Jedi is a 'Star Wars' themed 'Scissors, Paper, Rock' simulator.}
  spec.description   = %q{'Sith-Lord, Jedi, Ewok' is a game targeting younger audiences who may not have grown up playing 'Scissors, Paper, Rock', but will also more broadly appeal to fans of the Star Wars franchise.}
  spec.homepage      = "https://github.com/waldowred5/T1A3-Terminal-App"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/waldowred5/T1A3-Terminal-App"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables << 'sith_jedi_ewok'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.9"
  spec.add_development_dependency "tty-table", "~> 0.12.0"
  spec.add_development_dependency "tty-prompt", "~> 0.22.0"
  spec.add_development_dependency "colorize", "~> 0.8.1"
  spec.add_development_dependency "artii", "~> 2.1", ">= 2.1.2"
  spec.add_development_dependency "ruby2d", "~> 0.9.2"
end