class CreateBrewings < ActiveRecord::Migration[6.1]
  def change
    create_table :brewings do |t|
      t.string :name
      t.string :brewers
      t.integer :batch_number
      t.integer :strength
      t.integer :original_gravity
      t.integer :final_gravity
      t.text :notes
      t.date :date

      t.timestamps
    end
  end
end
