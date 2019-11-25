class User < ApplicationRecord
  has_many :publications, dependent: :destroy
  has_many :saved_publications, dependent: :destroy
  validates :collab, inclusion: { in: [true, false] }
  validates :leader, inclusion: { in: [true, false] }
  has_many :comments, dependent: :destroy
end
