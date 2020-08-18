require_relative 'lib/active_storage_backports/version'

Gem::Specification.new do |spec|
  spec.name          = "active_storage_backports"
  spec.version       = ActiveStorageBackports::VERSION
  spec.authors       = ["Andrew Fomera"]
  spec.email         = ["andrew@zerlex.net"]

  spec.summary       = %q{Backport ActiveStorage 6.1 features}
  spec.description   = %q{Backport ActiveStorage 6.1 features}
  spec.homepage      = "https://github.com/podia/podia"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "gi"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
