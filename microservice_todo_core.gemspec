# frozen_string_literal: true

require_relative "lib/microservice_todo_core/version"

Gem::Specification.new do |spec|
  spec.name = "microservice_todo_core"
  spec.version = MicroserviceTodoCore::VERSION
  spec.authors = ["Marcelo Henrique"]
  spec.email = ["henrique19.marcelo@gmail.com"]

  spec.summary = "Business rules for todo microservice app."
  spec.description = "Business rules for todo microservice app."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "activerecord", "7.2.1.1"
  spec.add_dependency "bcrypt", "3.1.20"
  spec.add_dependency "enumerate_it", "4.0.0"
  spec.add_dependency "jwt", "2.9.3"
  spec.add_dependency "pg", "1.5.8"
  spec.add_dependency "redis", "5.3.0"
  spec.add_dependency "standalone_migrations", "7.2.0"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
  spec.add_development_dependency "pry", "~> 0.14.2"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
