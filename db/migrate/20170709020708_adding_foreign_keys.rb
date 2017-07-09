class AddingForeignKeys < ActiveRecord::Migration[5.1]
  def change
   add_foreign_key :drivers, :cars
   add_foreign_key :cars, :accidents
   add_foreign_key :cars, :drivers
   add_foreign_key :accidents, :cars
 end
end
