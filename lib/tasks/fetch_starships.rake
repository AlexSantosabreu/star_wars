namespace :db do
  desc "get starships"
  task fetch_starships: :environment do
    url = 'https://swapi.dev/api/starships/'
    begin
      p 'Fetch starships'
      Starships::StarshipsManager.new(url).call
    rescue StandardError => e
      p e
    end
    p 'Fetch starships - Success'
  end
end
