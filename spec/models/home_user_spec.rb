require 'rails_helper'

RSpec.describe HomeUser, type: :model do
  before do
    @home_user = FactoryBot.build(:home_user)
  end
  describe 'ホームーユーザー中間テーブル登録'
    it "正しい情報が入力されていれば登録できる" do
      expect(@home_user).to be_valid
    end
end
