class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.text :text_report,           null: false
      t.integer :feeling_score_id,        null: false
      t.references :complete,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
