class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.string :title
      t.text :english
      t.text :japanese

      t.timestamps
    end
  end
end
