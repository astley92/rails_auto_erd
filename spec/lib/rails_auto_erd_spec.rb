# frozen_string_literal: true

require "rails_helper"

RSpec.describe RailsAutoErd do
  it "has a version number" do
    expect(described_class::VERSION).not_to be_nil
  end

  describe "#execute" do
    subject(:execute) { described_class.execute }

    it "builds an internal representation of the model setup" do
      expect(described_class::DetectModels).to receive(:call)

      execute
    end
  end
end
