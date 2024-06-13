# frozen_string_literal: true

require "rails_helper"

RSpec.describe RailsAutoErd::DetectModels do
  describe "#call" do
    subject(:call) { described_class.call }

    it "builds an internal representation of the model setup" do
      result = call

      expect(result).to contain_exactly(
        RailsAutoErd::Model.new(name: "User", table_name: "users"),
        RailsAutoErd::Model.new(name: "ActionText::RichText", table_name: "action_text_rich_texts"),
        RailsAutoErd::Model.new(name: "ActionText::EncryptedRichText", table_name: "action_text_rich_texts"),
        RailsAutoErd::Model.new(name: "ActiveStorage::VariantRecord", table_name: "active_storage_variant_records"),
        RailsAutoErd::Model.new(name: "ActiveStorage::Attachment", table_name: "active_storage_attachments"),
        RailsAutoErd::Model.new(name: "ActiveStorage::Blob", table_name: "active_storage_blobs"),
        RailsAutoErd::Model.new(name: "ActionMailbox::InboundEmail", table_name: "action_mailbox_inbound_emails")
      )
    end
  end
end
