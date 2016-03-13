class AddSexoToChilds < ActiveRecord::Migration
  def change
    add_column :children, :sexo, :integer
  end
end
