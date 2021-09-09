namespace :db do
  desc "get person"
  task fetch_person: :environment do
    url = 'https://swapi.dev/api/person/'
    begin
      p 'Fetch person'
      Person::PersonManager.new(url).call
    rescue StandardError => e
      p e
    end
    p 'Fetch person - Success'
  end
end
