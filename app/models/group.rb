class Group < ApplicationRecord
  has_many :groupcategories, dependent: :destroy
  has_many :categories, through: :groupcategories
  has_many :users
  has_many :actions, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :token, presence: true
end
