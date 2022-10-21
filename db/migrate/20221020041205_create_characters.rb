class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :charName
      t.string :charGender
      t.string :charLvl
      t.references :dndclass, null: false, foreign_key: true
      t.references :race, null: false, foreign_key: true
      t.references :background, null: false, foreign_key: true
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :wis
      t.integer :int
      t.integer :cha

      t.timestamps
    end
  end
end
