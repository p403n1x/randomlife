class Option < ApplicationRecord
  belongs_to :category
  has_many :actions
  validates :name, presence: true
  validates :selected, default: false#, exclusion: { in: [nil] }
end
