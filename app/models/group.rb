class Group < ApplicationRecord
  has_many :groupcategories, dependent: :destroy
  has_many :users
  validates :name, presence: true
  validates :address, presence: true
  validates :token, presence: true
end
