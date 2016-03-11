class CreateReferencia < ActiveRecord::Migration
  def change
    create_table :referencia do |t|
      t.string :color
      t.string :talla
      t.string :categoria
      t.string :ripo
      t.string :marca
      t.string :descripcion
      t.string :tela
      t.string :cantidad
      t.float :costo
      t.float :precio

      t.timestamps null: false
    end
  end
end
