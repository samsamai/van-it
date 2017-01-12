json.extract! job, :id, :pickup_address, :pickup_lat, :pickup_lon, :dropoff_address, :dropoff_lat, :dropoff_lon, :created_at, :updated_at
json.url job_url(job, format: :json)