class CreateHiraganas < ActiveRecord::Migration[6.0]
  def change
    create_table :hiraganas do |t|
      t.string :cachviet
      t.string :cachdoc

      t.timestamps
    end
  end
end
