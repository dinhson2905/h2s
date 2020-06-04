class CreateFlaskCards < ActiveRecord::Migration[6.0]
  def change
    create_table :flask_cards do |t|
      t.text :cach_viet
      t.text :cach_doc
      t.text :nghia
      t.references :set_card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
