class Complete < ApplicationRecord
  belongs_to :user
  belongs_to :work
  has_one :report
  has_many_attached :images
end
