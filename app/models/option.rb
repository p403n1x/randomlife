class Option < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :selected, presence: true, default: false, exclusion: { in: [nil] }
end
