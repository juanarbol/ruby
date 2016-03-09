class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :route
      t.string :airplane_id

      t.timestamps null: false
    end
  end
end
