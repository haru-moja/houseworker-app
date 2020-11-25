class FeelingScore < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '大満足' },
    { id: 3, name: '満足' },
    { id: 4, name: '普通' },
    { id: 5, name: '不満足' },
    { id: 6, name: '大不満足' },
  ]

  include ActiveHash::Associations
  has_many :reports
end