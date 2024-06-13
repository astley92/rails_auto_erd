# frozen_string_literal: true

module RailsAutoErd
  class Model
    def initialize(name:, table_name:)
      @name = name
      @table_name = table_name
    end
  end
end
