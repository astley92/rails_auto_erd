# frozen_string_literal: true

require "rails_helper"

RSpec.describe RailsAutoErd::DetectRelations do
  describe "#call" do
    subject(:call) { described_class.call(models) }

    let(:models) do
      [
        user_model,
        account_model
      ]
    end
    let(:user_model) { RailsAutoErd::Model.from_class(User) }
    let(:account_model) { RailsAutoErd::Model.from_class(Account) }

    it "builds an internal representation of the model setup" do
      result = call

      expect(result).to be_a(Array)
      expect(result).to contain_exactly(
        RailsAutoErd::Relation.new(
          from_model: user_model,
          to_model: account_model,
          type: :belongs_to
        ),
        RailsAutoErd::Relation.new(
          from_model: account_model,
          to_model: user_model,
          type: :has_many
        )
      )
    end
  end
end
