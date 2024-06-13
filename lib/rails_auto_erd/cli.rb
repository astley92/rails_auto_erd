# frozen_string_literal: true

require "rails_auto_erd"

module RailsAutoErd
  class CLI
    def call(args = ARGV)
      RailsAutoErd.execute
    end
  end
end
