class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :class
      t.integer :level
      t.text :backstory
      t.integer :experience

      t.timestamps
    end
  end
end
