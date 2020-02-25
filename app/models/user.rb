class User < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :groups
  validates :first_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  validates :last_name, presence: true
  validates :phone_number, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
