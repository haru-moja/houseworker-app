require 'rails_helper'
RSpec.describe Home, type: :model do
  before do
    @home= FactoryBot.build(:home)
  end
  describe 'ホーム新規登録' do
    it "正しい情報であれば登録できる" do
      expect(@home).to be_valid 
    end
    it "nameが空だと登録できない" do
      @home.name = ""
      @home.valid?
      binding.pry
      expect(@home.errors.full_messages).to include "Nameを入力してください"
    end
  end
end