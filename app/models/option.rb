class Option < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :selected, default: false#, exclusion: { in: [nil] }
end
