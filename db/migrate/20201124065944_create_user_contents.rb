class CreateUserContents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_contents do |t|

      t.text :text_content,          null: false
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
