class Work < ApplicationRecord
  belongs_to :user
  belongs_to :home
  has_many_attached :images
  has_one :complete
end
