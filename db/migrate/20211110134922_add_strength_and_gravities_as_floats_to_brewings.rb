class AddStrengthAndGravitiesAsFloatsToBrewings < ActiveRecord::Migration[6.1]
  def change
    add_column :brewings, :strength, :float
    add_column :brewings, :original_gravity, :float
    add_column :brewings, :final_gravity, :float
  end
end
