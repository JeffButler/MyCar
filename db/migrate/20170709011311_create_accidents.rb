class CreateAccidents < ActiveRecord::Migration[5.1]
  def change
    create_table :accidents do |t|
      t.datetime :time
      t.string :type

      t.timestamps
    end
  end
end
