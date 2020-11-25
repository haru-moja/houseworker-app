class CompleteReport
  
  include ActiveModel::Model
  attr_accessor :work_id, :user_id, :text_report, :feeling_score_id, :images, :complete_id
  

# ここにバリデーションの処理を書く
validates :feeling_score_id, numericality: { other_than: 0, message: "can't be blank" }
    # 各テーブルにデータを保存する処理を書く
    def save
      # ユーザーの情報を保存し、「user」という変数に入れている
      # 住所の情報を保存
      # 寄付金の情報を保存
      complete = Complete.create(work_id: work_id, user_id: user_id)
      Report.create(
        text_report: text_report, feeling_score_id: feeling_score_id, images: images, complete_id: complete.id
      )
    end
end