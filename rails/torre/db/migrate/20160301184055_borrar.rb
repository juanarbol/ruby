class Borrar < ActiveRecord::Migration
  def change
  	change_table :apartments do |t|
  	t.remove :user_id
  end
  end
end
