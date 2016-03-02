class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :surname
      t.integer :document
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
