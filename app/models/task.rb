class Task < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category
  validates :name, presence: true
  validates :progress, inclusion: { in: ["pending", "done"] }, presence: true
end
