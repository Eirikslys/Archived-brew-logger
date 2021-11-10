class RemoveGravityFromBrewings < ActiveRecord::Migration[6.1]
  def change
    remove_column :brewings, :original_gravity, :integer
    remove_column :brewings, :final_gravity, :integer
  end
end
