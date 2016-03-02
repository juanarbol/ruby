class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.float :note

      t.timestamps null: false
    end
  end
end
