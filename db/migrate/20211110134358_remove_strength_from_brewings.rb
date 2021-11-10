class RemoveStrengthFromBrewings < ActiveRecord::Migration[6.1]
  def change
    remove_column :brewings, :strength, :integer
  end
end
