class CreateMoms < ActiveRecord::Migration
  def change
    create_table :moms do |t|
      t.string :nombre
      t.string :segundo_nombre
      t.string :apellido
      t.string :segundo_apellido
      t.integer :documento
      t.integer :hijos
      t.integer :abortos
      t.string :problemas
      t.string :cancer_ovario
      t.string :cancer_mama
      t.string :otro_cancer
      t.string :grupo_sanguineo

      t.timestamps null: false
    end
  end
end
