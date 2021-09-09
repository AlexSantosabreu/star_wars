namespace :db do
  desc "get person"
  task fetch_vehicles: :environment do
    url = 'https://swapi.dev/api/vehicles/'
    begin
      p 'Fetch Vehicles'
      Vehicles::VehiclesManager.new(url).call
    rescue StandardError => e
      p e
    end
    p 'Fetch Vehicles - Success'
  end
end
