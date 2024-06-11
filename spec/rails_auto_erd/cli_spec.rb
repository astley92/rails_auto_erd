# frozen_string_literal: true

RSpec.describe RailsAutoErd::CLI do
  before do
    allow_any_instance_of(described_class).to receive(:rails_application?).and_return(true)
  end

  describe ".run" do
    it "returns 0" do
      expect(described_class.new.run).to eq(0)
    end

    it "calls RailsAutoErd.execute" do
      expect(RailsAutoErd).to receive(:execute)
      described_class.new.run
    end

    context "when not running in a Rails application" do
      it "returns 1" do
        allow_any_instance_of(described_class).to receive(:rails_application?).and_return(false)

        expect(described_class.new.run).to eq(1)
      end
    end
  end
end
