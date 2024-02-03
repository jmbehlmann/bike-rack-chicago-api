class CreateBikeRacks < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_racks do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.string :style

      t.timestamps
    end
  end
end
