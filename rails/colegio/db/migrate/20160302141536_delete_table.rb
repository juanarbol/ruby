class DeleteTable < ActiveRecord::Migration
  def change
  	drop_table :enrollements
  end
end
