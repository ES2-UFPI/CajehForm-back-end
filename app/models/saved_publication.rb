class SavedPublication < ApplicationRecord
  belongs_to :user
  has_one :publication
  validates :publication_id, presence: true
end
