# frozen_string_literal: true

require_relative("rails_auto_erd/detect_models")

module RailsAutoErd
  class Error < StandardError; end

  RAILS_ENV_FILEPATH = "config/environment.rb"

  def self.execute
    filepath = File.join(Dir.pwd, RAILS_ENV_FILEPATH)
    require(filepath)
    Rails.application.eager_load!

    DetectModels.call
  end
end
