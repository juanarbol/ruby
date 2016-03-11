class AddTipoToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :tipo, :string
  end
end
