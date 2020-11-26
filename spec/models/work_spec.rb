require 'rails_helper'
RSpec.describe Work, type: :model do
  before do
    @work = FactoryBot.build(:work)
  end
  describe 'ユーザー新規登録' do
    it "正しい情報が入力されると登録できる" do
      expect(@work).to be_valid
    end
    it "titleが空だと登録できない" do
      @work.title = ""
      @work.valid?
      expect(@work.errors.full_messages).to include "Titleを入力してください"
    end
    it "Text contentが空だと登録できない" do
      @work.text_content = ""
      @work.valid?
      expect(@work.errors.full_messages).to include "Text contentを入力してください"
    end
    it "Priceが空だと登録できない" do
      @work.price = ""
      @work.valid?
      expect(@work.errors.full_messages).to include "Priceを入力してください"
    end
    it "Need timeが空だと登録できない" do
      @work.need_time = ""
      @work.valid?
      expect(@work.errors.full_messages).to include "Need timeを入力してください"
    end
    it "Start timeが空だと登録できない" do
      @work.start_time = ""
      @work.valid?
      expect(@work.errors.full_messages).to include "Start timeを入力してください"
    end
  end
end
