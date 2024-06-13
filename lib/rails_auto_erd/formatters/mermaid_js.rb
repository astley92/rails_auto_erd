# frozen_string_literal: true

module RailsAutoErd
  module Formatters
    module MermaidJS
      DEFAULT_SYMS = {
        left_to_right: "}|",
        right_to_left: "|{"
      }

      def self.call(_models, relations)
        result = ""
        seen = []

        relations.each do |relation|
          inverse_relation = relations.detect { _1.is_inverse_of?(relation) }
          next if seen.include?(relation)

          seen << relation
          seen << inverse_relation

          left_to_right_sym = relation_type_sym(relation.type, direction: :left_to_right)
          right_to_left_sym = relation_type_sym(inverse_relation&.type, direction: :right_to_left)
          result += "\s\s#{relation.from_model.name.upcase} #{left_to_right_sym}--#{right_to_left_sym} #{relation.to_model.name.upcase}\n"
        end

        "erDiagram\n#{result}"
      end

      def self.relation_type_sym(type, direction:)
        return DEFAULT_SYMS.fetch(direction) if type.nil?

        case type
        when :has_many
          direction == :left_to_right ? "}|" : "|{"
        when :belongs_to
          direction == :left_to_right ? "}o" : "o{"
        else
          raise "Unknown relation type: #{type.inspect}"
        end
      end
    end
  end
end
