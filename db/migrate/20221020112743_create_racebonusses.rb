class CreateRacebonusses < ActiveRecord::Migration[7.0]
  def change
    create_table :racebonusses do |t|
      t.references :race, null: false, foreign_key: true
      t.string :bonusAtr
      t.string :bonusValue

      t.timestamps
    end
  end
end
