class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.string :year
      t.text :description
      t.string :color
      t.float :price
      t.string :use

      t.timestamps null: false
    end
  end
end
