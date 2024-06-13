# frozen_string_literal: true

require "rails_helper"

RSpec.describe RailsAutoErd::Formatters::MermaidJS do
  let(:models) do
    [
      user_model,
      account_model
    ]
  end
  let(:user_model) { RailsAutoErd::Model.from_class(User) }
  let(:account_model) { RailsAutoErd::Model.from_class(Account) }
  let(:relations) do
    [
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
    ]
  end

  describe ".call" do
    subject(:result) { described_class.call(models, relations) }

    it "returns the expected string" do
      expect(result).to eq(<<~MERMAID)
        erDiagram
          USER }o--|{ ACCOUNT
      MERMAID
    end
  end
end
