require 'rails_helper'

RSpec.describe Report, type: :model do
  before do
    @report = FactoryBot.build(:report)
  end
  describe 'レポートの新規登録' do
    it '正しい情報なら登録できる' do
      expect(@report).to be_valid
    end
    it 'text-contentが空だと登録できない' do
      @report.text_report = ""
      @report.valid?
      expect(@report.errors.full_messages).to include "Text reportを入力してください"
    end
    it 'feeling_scoreが空だと登録できない' do
      @report.feeling_score_id = ""
      @report.valid?
      expect(@report.errors.full_messages).to include "Feeling scoreを入力してください"
    end
    it 'feeling_scoreが空だと登録できない' do
      @report.feeling_score_id = 1
      @report.valid?
      expect(@report.errors.full_messages).to include "Feeling scoreは1以外の値にしてください"
    end
  end
end
