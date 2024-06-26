# frozen_string_literal: true

require_relative("model")

module RailsAutoErd
  module DetectModels
    def self.call
      ActiveRecord::Base
        .descendants
        .reject(&:abstract_class?)
        .map(&method(:build_model))
    end

    def self.build_model(klass)
      Model.new(name: klass.name, table_name: klass.table_name, klass:)
    end
    private_class_method :build_model
  end
end
