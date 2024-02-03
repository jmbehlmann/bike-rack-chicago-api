class BikeRacksController < ApplicationController

# query for closest rack to given lat long

# given_latitude = 41.8781
# given_longitude = -87.6298

# closest_bike_rack = BikeRack
#   .order(Arel.sql("location <-> ST_GeomFromText('POINT(#{given_longitude} #{given_latitude})', 4326)"))
#   .first

  def index
    @bike_racks = BikeRack.all
    render :index
  end

end
