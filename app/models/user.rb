class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :works, dependent: :destroy
  has_many :completes
  has_many :home_users
  has_many :homes, through: :home_users
  has_one :user_content

  with_options presence: true do
    validates :last_name
    validates :first_name
    validates :nickname, uniqueness: true
  end
end