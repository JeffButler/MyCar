class DropCarTable < ActiveRecord::Migration[5.1]
  def up
   drop_table :cars
 end

 def down
   raise ActiveRecord::IrreversibleMigration
 end
end
