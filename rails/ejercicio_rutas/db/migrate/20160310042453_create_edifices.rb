class CreateEdifices < ActiveRecord::Migration
  def change
    create_table :edifices do |t|
      t.string :nombre
      t.string :portero

      t.timestamps null: false
    end
  end
end
