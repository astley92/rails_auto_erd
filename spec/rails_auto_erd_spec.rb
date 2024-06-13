require "rails_helper"

RSpec.describe RailsAutoErd do
  it "has a version number" do
    RailsAutoErd.execute
    expect(RailsAutoErd::VERSION).not_to be_nil
  end
end
