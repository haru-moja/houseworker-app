class Work < ApplicationRecord
  belongs_to :user
  belongs_to :home
  has_many_attached :images
  has_one :complete

  with_options presence: true do
    validates :title
    validates :text_content
    validates :need_time, format: { with: /\A[-]?[0-9]+(\.[0-9]+)?\z/}
    validates :start_time
    validates :price, format: {with: /\A[0-9]+\z/}

  end
end
