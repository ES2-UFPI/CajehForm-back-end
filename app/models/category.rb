class Category < ApplicationRecord
  has_and_belongs_to_many :publications, dependent: :destroy
end
