class Report < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :complete
  has_many_attached :images
  belongs_to :feeling_score

  with_options numericality: { other_than: 1 } do
    validates :feeling_score_id
  end
end
