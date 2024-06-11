# frozen_string_literal: true

require_relative "lib/rails_auto_erd/version"

Gem::Specification.new do |spec|
  spec.name = "rails_auto_erd"
  spec.version = RailsAutoErd::VERSION
  spec.authors = ["Blake Astley"]
  spec.email = ["astley92@hotmail.com"]

  spec.summary = "A gem designed to generate ERD diagrams for Rails applications."
  spec.description = spec.summary
  spec.homepage = "https://github.com/astley92/rails_auto_erd"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.1"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/astley92/rails_auto_erd"
  spec.metadata["changelog_uri"] = "https://github.com/astley92/rails_auto_erd/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.21"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
