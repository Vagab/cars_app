class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :manufacture
      t.integer :year
      t.string :model

      t.timestamps
    end
  end
end
