class Report < ApplicationRecord
  belongs_to :complete
  has_many_attached :images
end
