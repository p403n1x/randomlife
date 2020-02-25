class Group < ApplicationRecord
  has_many :groupcategories, dependent: :destroy
  has_many :users
end
