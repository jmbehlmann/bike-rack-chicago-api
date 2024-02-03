class AddLatitudeAndLongitudeToBikeRacks < ActiveRecord::Migration[7.0]
  def change
    add_column :bike_racks, :latitude, :decimal, precision: 10, scale: 6
    add_column :bike_racks, :longitude, :decimal, precision: 10, scale: 6
  end
end
