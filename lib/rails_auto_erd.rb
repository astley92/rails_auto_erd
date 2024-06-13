# frozen_string_literal: true

require_relative("rails_auto_erd/detect_models")
require_relative("rails_auto_erd/detect_relations")

module RailsAutoErd
  class Error < StandardError; end

  RAILS_ENV_FILEPATH = "config/environment.rb"

  def self.execute
    filepath = File.join(Dir.pwd, RAILS_ENV_FILEPATH)
    require(filepath)
    Rails.application.eager_load!

    models = DetectModels.call
    DetectRelations.call(models)
  end
end
