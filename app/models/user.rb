class User < ApplicationRecord
  has_many :publications, dependent: :destroy
  has_many :saved_publications, dependent: :destroy
end
