# frozen_string_literal: true

require "rails_auto_erd"

module RailsAutoErd
  class CLI
    def run
      return 1 unless rails_application?

      RailsAutoErd.execute
      0
    end

    private

    def rails_application?
      File.exist?("config/environment.rb") &&
        File.read("config/environment.rb").include?("Rails.application")
    end
  end
end
