class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :question
      t.string :answer_a
      t.string :answer_b
      t.string :answer_c
      t.string :answer_d
      t.string :correct_answer
      t.references :hiragana, null: false, foreign_key: true

      t.timestamps
    end
  end
end
