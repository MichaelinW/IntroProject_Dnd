class CreateDndclasses < ActiveRecord::Migration[7.0]
  def change
    create_table :dndclasses do |t|
      t.string :className
      t.string :classHD
      t.text :classDesc
      t.string :classProfSav

      t.timestamps
    end
  end
end
