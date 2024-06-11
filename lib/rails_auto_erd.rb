# frozen_string_literal: true

require_relative "rails_auto_erd/version"

module RailsAutoErd
  class Error < StandardError; end

  def self.execute
    puts "Hello, World!"
  end
end
