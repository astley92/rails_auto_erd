# frozen_string_literal: true

require "rails_helper"

RSpec.describe RailsAutoErd::Model do
  describe ".from_class" do
    subject(:from_class) { described_class.from_class(klass) }

    let(:klass) { User }

    it "creates a model from a class" do
      model = from_class

      expect(model.name).to eq("User")
      expect(model.table_name).to eq("users")
      expect(model.klass).to eq(klass)
    end

    context "when given a klass that's not a model" do
      let(:klass) { Object }

      it "raises an error" do
        expect { from_class }.to raise_error(ArgumentError)
      end
    end
  end
end
