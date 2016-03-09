class AddPriceToRoute < ActiveRecord::Migration
  def change
    add_column :routes, :price, :float
  end
end
