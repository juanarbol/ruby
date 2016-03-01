class AddTowerIdToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :tower_id, :integer
  end
end
