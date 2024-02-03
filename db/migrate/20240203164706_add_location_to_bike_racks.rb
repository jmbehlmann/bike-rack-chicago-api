class AddLocationToBikeRacks < ActiveRecord::Migration[7.0]
  def change
    add_column :bike_racks, :location, :st_point, geographic: true
  end
end
