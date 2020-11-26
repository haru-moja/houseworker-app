require 'rails_helper'

RSpec.describe Complete, type: :model do
  before do
    @complete = FactoryBot.build(:complete)
  end
  describe 'コンプリートテーブルの新規作成' do
    it '正しい情報を入力すれば登録できる' do
      expect(@complete).to be_valid
    end
  end

end
