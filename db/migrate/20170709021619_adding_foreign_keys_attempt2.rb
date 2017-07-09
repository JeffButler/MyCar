class AddingForeignKeysAttempt2 < ActiveRecord::Migration[5.1]
  def change
    add_reference :cars, :driver, foreign_key: true
    add_reference :drivers, :car, foreign_key: true
    add_reference :accidents, :car, foreign_key: true
    add_reference :cars, :accident, foreign_key: true
  end
end
