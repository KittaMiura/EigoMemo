class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :japanese
      t.text :english
      t.text :english_answer

      t.timestamps
    end
  end
end
