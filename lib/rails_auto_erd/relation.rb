# frozen_string_literal: true

module RailsAutoErd
  class Relation
    attr_reader :from_model, :to_model, :type

    def initialize(from_model:, to_model:, type:)
      @from_model = from_model
      @to_model = to_model
      @type = type
    end

    def ==(other)
      other.is_a?(self.class) &&
        from_model == other.from_model &&
        to_model == other.to_model &&
        type == other.type
    end

    def is_inverse_of?(other)
      other.is_a?(self.class) &&
        from_model == other.to_model &&
        to_model == other.from_model
    end
  end
end
