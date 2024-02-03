class BikeRack < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude

  include Geocoder
  # include ActiveRecord::PostGIS::ClassMethods
  # include RGeo::ActiveRecord::Spatial
  # set_rgeo_factory_for_column(:location, RGeo::Geographic.spherical_factory(srid: 4326))


end
