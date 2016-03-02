class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :text
      t.date :final_date

      t.timestamps null: false
    end
  end
end
