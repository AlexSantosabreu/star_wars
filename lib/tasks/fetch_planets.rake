namespace :db do
  desc "get planets"
  task fetch_planets: :environment do
    url = 'https://swapi.dev/api/planets/'
    begin
      p 'Fetch planets'
      Planets::PlanetsManager.new(url).call
    rescue StandardError => e
      p e
    end
    p 'Fetch planets - Success'
  end
end
