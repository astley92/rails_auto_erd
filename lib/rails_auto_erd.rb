# frozen_string_literal: true

require_relative("rails_auto_erd/detect_models")

module RailsAutoErd
  class Error < StandardError; end

  def self.execute
    model_definition = DetectModels.call
  end
end
