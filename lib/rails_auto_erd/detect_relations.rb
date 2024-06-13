# frozen_string_literal: true

require_relative("relation")

module RailsAutoErd
  module DetectRelations
    def self.call(models)
      res = []

      models.each do |model|
        associations = model.klass.reflect_on_all_associations
        associations.each do |association|
          res << RailsAutoErd::Relation.new(
            from_model: model,
            to_model: RailsAutoErd::Model.from_class(association.klass),
            type: association.macro
          )
        end
      end

      res
    end
  end
end
