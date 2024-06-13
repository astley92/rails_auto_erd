# frozen_string_literal: true

require "rails_helper"

RSpec.describe RailsAutoErd do
  it "has a version number" do
    described_class.execute
    expect(described_class::VERSION).not_to be_nil
  end
end
