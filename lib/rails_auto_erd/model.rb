# frozen_string_literal: true

module RailsAutoErd
  class Model
    def initialize(name:, table_name:, klass:)
      @name = name
      @table_name = table_name
      @klass = klass
    end

    def ==(other)
      klass == other.klass
    end

    protected

    attr_reader :klass
  end
end
