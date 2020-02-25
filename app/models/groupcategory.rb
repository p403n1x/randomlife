class Groupcategory < ApplicationRecord
  belongs_to :group
  belongs_to :category
  validates :group, uniqueness: { scope: :category }
end
