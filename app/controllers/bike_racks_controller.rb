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
    if params[:location].present?
      location = Geocoder.search(params[:location]).first
      if location.present?
        latitude = location.latitude
        longitude = location.longitude
        @bike_racks = BikeRack.near([latitude, longitude]).limit(10)
      else
        # Handle case where Geocoder can't find coordinates for the provided location
        @bike_racks = []
      end
    elsif params[:latitude].present? && params[:longitude].present?
      @bike_racks = BikeRack.near("#{params[:latitude]}, #{params[:longitude]}").limit(10)
    else
      @bike_racks = BikeRack.first(10)
    end
    render :index
  end

  def show
    @bike_rack = BikeRack.find(params[:id])
    render :show
  end

  def create
    @bike_rack = BikeRack.new(
      name: params[:name],
      description: params[:description],
      quantity: params[:quantity],
      style: params[:style],
      location: "POINT (#{params[:longitude]} #{params[:latitude]})",
      latitude: params[:latitude],
      longitude: params[:longitude],
    )
    if @bike_rack.save
      render :show
    else
      render json: {message: "there was a problem creating this bike rack"}
    end
  end

  def update
    @bike_rack = BikeRack.find(params[:id])
    @bike_rack.assign_attributes(
      name: params[:name] || @bike_rack.name,
      description: params[:description] || @bike_rack.description,
      quantity: params[:quantity] || @bike_rack.quantity,
      style: params[:style] || @bike_rack.style,
      latitude: params[:latitude] || @bike_rack.latitude,
      longitude: params[:longitude] || @bike_rack.longitude,
    )

    if params[:longitude].present? && params[:latitude].present?
      @bike_rack.location = "POINT (#{params[:longitude]} #{params[:latitude]})"
    elsif params[:longitude].present?
      @bike_rack.location = "POINT (#{params[:longitude]} #{@bike_rack.latitude})"
    elsif params[:latitude].present?
      @bike_rack.location = "POINT (#{@bike_rack.longitude} #{params[:latitude]})"
    else
      @bike_rack.location = @bike_rack.location
    end

    if @bike_rack.save
      render :show
    else
      render json: {message: "there was a problem updating this bike rack"}
    end
  end

  def destroy
    @bike_rack = BikeRack.find(params[:id])
    @bike_rack.destroy
    render json: {message: "you destroyed a bike rack"}
  end

end

