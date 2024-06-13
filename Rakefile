# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require_relative "lib/rails_auto_erd/version"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]

desc "Build the gem"
task :build do
  sh "gem build rails_auto_erd.gemspec -V"
end

desc "Install the gem"
task install: %i[build] do
  sh "gem install rails_auto_erd-#{RailsAutoErd::VERSION}.gem -V -l"
end

desc "Run the gem"
task run: %i[install] do
  sh "rails_auto_erd generate"
end

desc "Clean local setup"
task :clean do
  sh "rm -f rails_auto_erd-#{RailsAutoErd::VERSION}.gem"
  sh "gem uninstall rails_auto_erd -x -a"
end
