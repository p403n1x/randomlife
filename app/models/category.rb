class Category < ApplicationRecord
  has_many :groupcategories
  has_many :options, dependent: :destroy
  has_many :tasks
end
