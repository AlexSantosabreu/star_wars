namespace :db do
  desc "get species"
  task fetch_species: :environment do
    url = 'https://swapi.dev/api/species/'
    begin
      p 'Fetch species'
      Species::SpeciesManager.new(url).call
    rescue StandardError => e
      p e
    end
    p 'Fetch species - Success'
  end
end
