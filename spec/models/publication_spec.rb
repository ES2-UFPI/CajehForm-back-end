require 'rails_helper'

RSpec.describe Publication, type: :model do
  context "with valid attributes" do
    subject do
      described_class.new(
        title: "Testing a publication",
        content: "Content to test a Publication. Lets see if this works.",
        user: create(:user)
      )
    end
    it "is valid" do
      expect(subject).to be_valid
    end
  end

  context "without title" do
    subject do
      described_class.new(
        title: "Testing a publication",
        user: create(:user)
      )
    end
    it "is invalid" do
      expect(subject).not_to be_valid
    end
  end

  context "without content" do
    subject do
      described_class.new(
        content: "Content to test a Publication. Lets see if this works.",
        user: create(:user)
      )
    end
    it "is invalid" do
      expect(subject).not_to be_valid
    end
  end

  context "without user" do
    subject do
      described_class.new(
        title: "Testing a publication",
        content: "Content to test a Publication. Lets see if this works."
      )
    end
    it "is invalid" do
      expect(subject).not_to be_valid
    end
  end
end
