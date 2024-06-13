# frozen_string_literal: true

module RailsAutoErd
  class Model
    def self.from_class(klass)
      unless klass.ancestors.include?(ActiveRecord::Base)
        raise(ArgumentError, "#{klass.inspect} is not a subtype of ActiveRecord::Base")
      end

      new(
        name: klass.name,
        table_name: klass.table_name,
        klass:
      )
    end

    attr_reader :name, :table_name, :klass

    def initialize(name:, table_name:, klass:)
      @name = name
      @table_name = table_name
      @klass = klass
    end

    def ==(other)
      klass == other.klass
    end
  end
end
