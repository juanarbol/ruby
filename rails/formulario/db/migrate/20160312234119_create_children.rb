class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :nombre
      t.string :segundo_nombre
      t.string :apellido
      t.string :segundo_apellido
      t.integer :documento
      t.integer :edad
      t.string :nombre_padre
      t.string :nombre_madre
      t.string :vacunas
      t.date :fecha_nacimiento
      t.string :cancer
      t.string :hipertension
      t.string :diabetes
      t.string :desnutricion
      t.string :grupo_sanguineo
      t.string :enfermedades

      t.timestamps null: false
    end
  end
end
