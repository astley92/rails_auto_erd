# frozen_string_literal: true

module RailsAutoErd
  class Model
    def initialize(name:, table_name:)
      @name = name
      @table_name = table_name
    end

    def ==(other)
      name == other.name && table_name == other.table_name
    end

    protected

    attr_reader :name, :table_name
  end
end
