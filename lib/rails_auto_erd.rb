# frozen_string_literal: true

require_relative "rails_auto_erd/version"

module RailsAutoErd
  class Error < StandardError; end

  def self.execute
    Rails.application.eager_load!
    puts ActiveRecord::Base.descendants.inspect
    puts ApplicationRecord.descendants.inspect
    puts "Hello, World!"
  end
end
