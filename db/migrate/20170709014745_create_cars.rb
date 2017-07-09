class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :color
      t.integer :year
      t.string :model
      t.string :car_type

      t.timestamps
    end
  end
end
