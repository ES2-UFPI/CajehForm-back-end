class Publication < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :categories, dependent: :destroy
end
