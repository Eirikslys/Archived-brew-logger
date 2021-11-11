class CreateBrewings < ActiveRecord::Migration[6.1]
  def change
    create_table :brewings do |t|
      t.string :name
      t.string :brewers
      t.integer :batch_number
      t.float :strength
      t.float :original_gravity
      t.float :final_gravity
      t.text :notes
      t.date :date
      t.integer :liters

      t.timestamps
    end
  end
end
