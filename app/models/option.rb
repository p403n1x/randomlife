class Option < ApplicationRecord
  belongs_to :category
  has_many :actions, dependent: :destroy
  validates :name, presence: true
  validates :selected, default: false#, exclusion: { in: [nil] }
end
