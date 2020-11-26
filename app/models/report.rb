class Report < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :complete
  has_many_attached :images
  belongs_to :feeling_score

  with_options  presence: true do
    validates :text_report
    validates :feeling_score_id, numericality: { other_than: 1 }
  end
end
