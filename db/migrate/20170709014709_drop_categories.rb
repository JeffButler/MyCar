class DropCategories < ActiveRecord::Migration[5.1]
  def up
   drop_table :categories
 end

 def down
   raise ActiveRecord::IrreversibleMigration
 end
end
