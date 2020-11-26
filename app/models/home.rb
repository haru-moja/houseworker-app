class Home < ApplicationRecord
  has_many :home_users
  has_many :users, through: :home_users
  has_many :works, dependent: :destroy
  validates :name, presence: true
end