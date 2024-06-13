# frozen_string_literal: true

require_relative "../rails_auto_erd"

module RailsAutoErd
  class CLI
    def call(_args = ARGV)
      puts RailsAutoErd.execute
    end
  end
end
