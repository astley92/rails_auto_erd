# frozen_string_literal: true

require "rails_auto_erd"

module RailsAutoErd
  class CLI
    def call(_args = ARGV)
      RailsAutoErd.execute
    end
  end
end
