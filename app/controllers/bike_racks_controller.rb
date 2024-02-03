class BikeRacksController < ApplicationController

# 2 ways to query for nearest bike rack

# geocoder way

# location = Geocoder.search("6345 N Magnolia Ave, Chicago, IL")
# latitude = location.first.latitude
# longitude = location.first.longitude
# nearest_bike_racks = BikeRack.near([latitude, longitude]).limit(3)

# postgis way (probably not necessary because I will use geocoder anyway)
# use lat and long from above
# nearest_bike_racks = BikeRack.order(Arel.sql("location <-> ST_GeographyFromText('POINT(#{longitude} #{latitude})')")).limit(3)

  def index
    @bike_racks = BikeRack.all
    render :index
  end

end
