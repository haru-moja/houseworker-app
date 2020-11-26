require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    it "正しい情報が入力されると登録できる" do
      expect(@user).to be_valid
    end
    it "nicknameが空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "Nicknameを入力してください"
    end
    it "nicknameが重複すると登録できない" do
      @user.save
      another = FactoryBot.build(:user, nickname: @user.nickname)
      another.valid?
      expect(another.errors.full_messages).to include "Nicknameはすでに存在します"
    end
    it "emailが空だと登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "メールアドレスを入力してください"
    end
    it "emailが重複すると登録できない" do
      @user.save
      another = FactoryBot.build(:user, email: @user.email)
      another.valid?
      expect(another.errors.full_messages).to include "メールアドレスはすでに存在します"
    end
    it "first_nameが空だと登録できない" do
      @user.first_name  = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "名前を入力してください"
    end
    it "last_nameが空だと登録できない" do
      @user.last_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "姓を入力してください"
    end
  end
end
