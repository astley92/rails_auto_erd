# frozen_string_literal: true

require "rails_helper"

RSpec.describe RailsAutoErd::DetectModels do
  describe "#call" do
    subject(:call) { described_class.call }

    it "builds an internal representation of the model setup" do
      result = call

      expect(result).to contain_exactly(
        RailsAutoErd::Model.new(
          name: "User",
          table_name: "users",
          klass: User
        ),
        RailsAutoErd::Model.new(
          name: "Account",
          table_name: "accounts",
          klass: Account
        ),
        RailsAutoErd::Model.new(
          name: "ActionText::RichText",
          table_name: "action_text_rich_texts",
          klass: ActionText::RichText
        ),
        RailsAutoErd::Model.new(
          name: "ActionText::EncryptedRichText",
          table_name: "action_text_rich_texts",
          klass: ActionText::EncryptedRichText
        ),
        RailsAutoErd::Model.new(
          name: "ActiveStorage::VariantRecord",
          table_name: "active_storage_variant_records",
          klass: ActiveStorage::VariantRecord
        ),
        RailsAutoErd::Model.new(
          name: "ActiveStorage::Attachment",
          table_name: "active_storage_attachments",
          klass: ActiveStorage::Attachment
        ),
        RailsAutoErd::Model.new(
          name: "ActiveStorage::Blob",
          table_name: "active_storage_blobs",
          klass: ActiveStorage::Blob
        ),
        RailsAutoErd::Model.new(
          name: "ActionMailbox::InboundEmail",
          table_name: "action_mailbox_inbound_emails",
          klass: ActionMailbox::InboundEmail
        )
      )
    end
  end
end
