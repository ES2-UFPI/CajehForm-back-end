require 'rails_helper'

RSpec.describe SavedPublication, type: :model do
  let(:publication) { create(:publication) }
  let(:user) { create(:user) }

  context "with valid attributes" do
    subject do
      described_class.new(
        publication_id: publication.id,
        user: user
      )
    end
    it "is valid" do
      expect(subject).to be_valid
    end
  end

  context "without a user" do
    subject do
      described_class.new(
        publication_id: publication.id
      )
    end
    it "is invalid" do
      expect(subject).not_to be_valid
    end
  end

  context "without a publication" do
    subject do
      described_class.new(
        user: user
      )
    end
    it "is invalid" do
      expect(subject).not_to be_valid
    end
  end
end
