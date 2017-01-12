class Job < ApplicationRecord
  before_save :geocode_endpoints

  private

  def geocode_endpoints
    if pickup_address_changed?
      geocoded = Geocoder.search(pickup_address).first
      if geocoded
        self.pickup_lat = geocoded.latitude
        self.pickup_lon = geocoded.longitude
      end
    end

    if dropoff_address_changed?
      geocoded = Geocoder.search(dropoff_address).first
      if geocoded
        self.dropoff_lat = geocoded.latitude
        self.dropoff_lon = geocoded.longitude
      end
    end
  end
end
