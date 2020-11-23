class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :title,               null: false
      t.text :text_content,          null: false
      t.integer :price,              null: false
      t.decimal :need_time,       null: false, precision: 4, scale: 1       
      t.datetime :start_time,              null: false
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
